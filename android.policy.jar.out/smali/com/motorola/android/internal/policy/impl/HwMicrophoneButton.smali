.class public Lcom/motorola/android/internal/policy/impl/HwMicrophoneButton;
.super Ljava/lang/Object;
.source "HwMicrophoneButton.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "HdwrMicrophoneButton"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/motorola/android/internal/policy/impl/HwMicrophoneButton;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method

.method private createAppVoiceSearchIntent(Landroid/content/ComponentName;Landroid/app/SearchManager;)Landroid/content/Intent;
    .locals 18
    .parameter "searchActivity"
    .parameter "searchManager"

    .prologue
    .line 63
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v12

    .line 65
    .local v12, searchable:Landroid/app/SearchableInfo;
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-virtual {v12}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v15

    if-nez v15, :cond_1

    .line 68
    :cond_0
    const/4 v14, 0x0

    .line 131
    :goto_0
    return-object v14

    .line 71
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v15, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v2, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v2, baseIntent:Landroid/content/Intent;
    const/high16 v15, 0x1000

    invoke-virtual {v2, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 73
    const/4 v13, 0x0

    .line 75
    .local v13, testIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/android/internal/policy/impl/HwMicrophoneButton;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const/high16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v15, v2, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    .line 77
    .local v11, ri:Landroid/content/pm/ResolveInfo;
    if-nez v11, :cond_2

    .line 80
    const/4 v14, 0x0

    goto :goto_0

    .line 86
    :cond_2
    new-instance v9, Landroid/content/Intent;

    const-string v15, "android.intent.action.SEARCH"

    invoke-direct {v9, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    .local v9, queryIntent:Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 88
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/android/internal/policy/impl/HwMicrophoneButton;->mContext:Landroid/content/Context;

    const/16 v16, 0x0

    const/high16 v17, 0x4000

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v15, v0, v9, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 95
    .local v6, pending:Landroid/app/PendingIntent;
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 100
    .local v8, queryExtras:Landroid/os/Bundle;
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 103
    .local v14, voiceIntent:Landroid/content/Intent;
    const-string v4, "free_form"

    .line 104
    .local v4, languageModel:Ljava/lang/String;
    const/4 v7, 0x0

    .line 105
    .local v7, prompt:Ljava/lang/String;
    const/4 v3, 0x0

    .line 106
    .local v3, language:Ljava/lang/String;
    const/4 v5, 0x1

    .line 107
    .local v5, maxResults:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/android/internal/policy/impl/HwMicrophoneButton;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 108
    .local v10, resources:Landroid/content/res/Resources;
    invoke-virtual {v12}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v15

    if-eqz v15, :cond_3

    .line 109
    invoke-virtual {v12}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v15

    invoke-virtual {v10, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 111
    :cond_3
    invoke-virtual {v12}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v15

    if-eqz v15, :cond_4

    .line 112
    invoke-virtual {v12}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v15

    invoke-virtual {v10, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 114
    :cond_4
    invoke-virtual {v12}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v15

    if-eqz v15, :cond_5

    .line 115
    invoke-virtual {v12}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v15

    invoke-virtual {v10, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 117
    :cond_5
    invoke-virtual {v12}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v15

    if-eqz v15, :cond_6

    .line 118
    invoke-virtual {v12}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v5

    .line 120
    :cond_6
    const-string v15, "android.speech.extra.LANGUAGE_MODEL"

    invoke-virtual {v14, v15, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string v15, "android.speech.extra.PROMPT"

    invoke-virtual {v14, v15, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string v15, "android.speech.extra.LANGUAGE"

    invoke-virtual {v14, v15, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v15, "android.speech.extra.MAX_RESULTS"

    invoke-virtual {v14, v15, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    const-string v15, "calling_package"

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string v15, "android.speech.extra.RESULTS_PENDINGINTENT"

    invoke-virtual {v14, v15, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 129
    const-string v15, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    invoke-virtual {v14, v15, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto/16 :goto_0
.end method


# virtual methods
.method public getAppVoiceSearchIntent(Landroid/app/SearchManager;)Landroid/content/Intent;
    .locals 6
    .parameter "searchManager"

    .prologue
    .line 36
    const/4 v1, 0x0

    .line 38
    .local v1, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/motorola/android/internal/policy/impl/HwMicrophoneButton;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    .line 39
    iget-object v4, p0, Lcom/motorola/android/internal/policy/impl/HwMicrophoneButton;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 42
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 43
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v2, :cond_0

    .line 44
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 45
    .local v3, runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v3, :cond_0

    .line 48
    iget-object v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-direct {p0, v4, p1}, Lcom/motorola/android/internal/policy/impl/HwMicrophoneButton;->createAppVoiceSearchIntent(Landroid/content/ComponentName;Landroid/app/SearchManager;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 58
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v3           #runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_0
    :goto_0
    return-object v1

    .line 54
    .restart local v0       #am:Landroid/app/ActivityManager;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

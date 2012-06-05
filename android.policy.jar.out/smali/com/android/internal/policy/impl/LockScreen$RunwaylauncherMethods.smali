.class Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;
.super Ljava/lang/Object;
.source "LockScreen.java"

# interfaces
.implements Lcom/motorola/android/widget/RunwayLauncher$OnTriggerListener;
.implements Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RunwaylauncherMethods"
.end annotation


# instance fields
.field private mCameraDisabled:Z

.field private mHideRunwayTarget:I

.field private final mHideTargetArray:[I

.field mIntentList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mOperatorName_string:Ljava/lang/String;

.field private final mRunwayLauncher:Lcom/motorola/android/widget/RunwayLauncher;

.field final synthetic this$0:Lcom/android/internal/policy/impl/LockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockScreen;Lcom/motorola/android/widget/RunwayLauncher;)V
    .locals 3
    .parameter
    .parameter "runwayLauncher"

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    new-instance v1, Landroid/util/SparseArray;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mIntentList:Landroid/util/SparseArray;

    .line 341
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mHideRunwayTarget:I

    .line 342
    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mHideTargetArray:[I

    .line 434
    iput-object p2, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mRunwayLauncher:Lcom/motorola/android/widget/RunwayLauncher;

    .line 437
    :try_start_0
    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/policy/impl/LockScreen;->access$1000(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10404e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mOperatorName_string:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :goto_0
    return-void

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "none"

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mOperatorName_string:Ljava/lang/String;

    goto :goto_0

    .line 342
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;)Lcom/motorola/android/widget/RunwayLauncher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mRunwayLauncher:Lcom/motorola/android/widget/RunwayLauncher;

    return-object v0
.end method

.method private getMatchComponentName(Ljava/util/List;Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)I
    .locals 11
    .parameter
    .parameter "intent"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 346
    .local p1, inResolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local p3, inActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .local p4, intentFilters:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    const/4 v3, -0x1

    .line 347
    .local v3, index:I
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    .line 348
    .local v7, preferredSize:I
    const/4 v6, 0x0

    .line 349
    .local v6, match:Z
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_0

    move v4, v3

    .line 376
    .end local v3           #index:I
    .local v4, index:I
    :goto_0
    return v4

    .line 353
    .end local v4           #index:I
    .restart local v3       #index:I
    :cond_0
    if-nez v7, :cond_2

    .line 354
    const/4 v3, 0x0

    :cond_1
    :goto_1
    move v4, v3

    .line 376
    .end local v3           #index:I
    .restart local v4       #index:I
    goto :goto_0

    .line 356
    .end local v4           #index:I
    .restart local v3       #index:I
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 357
    .local v8, reInfo:Landroid/content/pm/ResolveInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v7, :cond_4

    .line 358
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 359
    .local v0, componentName:Landroid/content/ComponentName;
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/IntentFilter;

    .line 360
    .local v5, intentFilter:Landroid/content/IntentFilter;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/content/IntentFilter;->matchAction(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 363
    const/4 v6, 0x1

    .line 367
    .end local v0           #componentName:Landroid/content/ComponentName;
    .end local v5           #intentFilter:Landroid/content/IntentFilter;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 368
    if-eqz v6, :cond_3

    .line 372
    .end local v1           #i:I
    .end local v8           #reInfo:Landroid/content/pm/ResolveInfo;
    :cond_5
    if-nez v6, :cond_1

    .line 373
    const/4 v3, 0x0

    goto :goto_1

    .line 357
    .restart local v0       #componentName:Landroid/content/ComponentName;
    .restart local v1       #i:I
    .restart local v5       #intentFilter:Landroid/content/IntentFilter;
    .restart local v8       #reInfo:Landroid/content/pm/ResolveInfo;
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private getResolveInfos(Landroid/content/pm/PackageManager;Landroid/content/Intent;Z)Ljava/util/List;
    .locals 5
    .parameter "pm"
    .parameter "intent"
    .parameter "havePreferred"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/Intent;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    const/4 v4, 0x0

    invoke-virtual {p1, p2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 381
    .local v2, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 382
    .local v3, systemAppInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 383
    .local v1, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_1

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_0

    .line 385
    :cond_1
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 389
    .end local v1           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2
    if-nez p3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 392
    .end local v3           #systemAppInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_1
    return-object v3

    .restart local v3       #systemAppInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    move-object v3, v2

    goto :goto_1
.end method

.method private setTargetResources(ILandroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V
    .locals 15
    .parameter "res_id"
    .parameter "pm"
    .parameter "intent"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 397
    .local p4, prefActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .local p5, intentFilters:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    if-ltz p1, :cond_0

    const/4 v13, 0x3

    move/from16 v0, p1

    if-le v0, v13, :cond_1

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_3

    const/4 v13, 0x1

    :goto_1
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {p0, v0, v1, v13}, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->getResolveInfos(Landroid/content/pm/PackageManager;Landroid/content/Intent;Z)Ljava/util/List;

    move-result-object v10

    .line 401
    .local v10, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v8, 0x0

    .line 402
    .local v8, resolveInfo:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-direct {p0, v10, v0, v1, v2}, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->getMatchComponentName(Ljava/util/List;Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)I

    move-result v9

    .line 403
    .local v9, resolveInfoIndex:I
    if-ltz v9, :cond_4

    .line 404
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #resolveInfo:Landroid/content/pm/ResolveInfo;
    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 405
    .restart local v8       #resolveInfo:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 406
    .local v5, icon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 410
    .local v3, appLabel:Ljava/lang/String;
    const-string v13, "vzw"

    iget-object v14, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v13, "vnd.android-dir/mms-sms"

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 411
    const-string v11, " "

    .line 412
    .local v11, separator:Ljava/lang/String;
    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 413
    .local v12, vzwText:[Ljava/lang/String;
    array-length v13, v12

    if-lez v13, :cond_2

    .line 414
    const/4 v13, 0x0

    aget-object v3, v12, v13

    .line 418
    .end local v11           #separator:Ljava/lang/String;
    .end local v12           #vzwText:[Ljava/lang/String;
    :cond_2
    iget-object v13, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mRunwayLauncher:Lcom/motorola/android/widget/RunwayLauncher;

    move/from16 v0, p1

    invoke-virtual {v13, v0, v5, v3}, Lcom/motorola/android/widget/RunwayLauncher;->setTargetResources(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 419
    iget-object v13, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 420
    .local v7, pkName:Ljava/lang/String;
    iget-object v13, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 421
    .local v4, className:Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    const-string v13, "android.intent.action.MAIN"

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 422
    .local v6, newIntent:Landroid/content/Intent;
    const/high16 v13, 0x1000

    invoke-virtual {v6, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 423
    invoke-virtual {v6, v7, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 425
    iget-object v13, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mIntentList:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v13, v0, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 400
    .end local v3           #appLabel:Ljava/lang/String;
    .end local v4           #className:Ljava/lang/String;
    .end local v5           #icon:Landroid/graphics/drawable/Drawable;
    .end local v6           #newIntent:Landroid/content/Intent;
    .end local v7           #pkName:Ljava/lang/String;
    .end local v8           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v9           #resolveInfoIndex:I
    .end local v10           #resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    const/4 v13, 0x0

    goto :goto_1

    .line 427
    .restart local v8       #resolveInfo:Landroid/content/pm/ResolveInfo;
    .restart local v9       #resolveInfoIndex:I
    .restart local v10       #resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_4
    iget v13, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mHideRunwayTarget:I

    iget-object v14, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mHideTargetArray:[I

    aget v14, v14, p1

    or-int/2addr v13, v14

    iput v13, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mHideRunwayTarget:I

    goto/16 :goto_0
.end method

.method private showAppErrorDialog()V
    .locals 6

    .prologue
    .line 550
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 551
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$1600(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040694

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 552
    .local v3, title:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$1700(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040695

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 553
    .local v2, message:Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 554
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 555
    const v4, 0x104000a

    new-instance v5, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods$1;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods$1;-><init>(Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 560
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 561
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 562
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 563
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 564
    return-void
.end method

.method private usingFacelock()Z
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$700(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$700(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mRunwayLauncher:Lcom/motorola/android/widget/RunwayLauncher;

    return-object v0
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 486
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 2
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mIsTablet:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$1200(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 579
    :cond_0
    :goto_0
    return-void

    .line 572
    :cond_1
    const/4 v0, 0x5

    if-ne p2, v0, :cond_2

    .line 573
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mDimHandler:Lcom/android/internal/policy/impl/LockScreen$DimHandler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$1900(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/LockScreen$DimHandler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockScreen$DimHandler;->sendEmptyMessage(I)Z

    .line 574
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$300(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_0

    .line 575
    :cond_2
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #calls: Lcom/android/internal/policy/impl/LockScreen;->resumeBackgroundColor()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$2000(Lcom/android/internal/policy/impl/LockScreen;)V

    goto :goto_0
.end method

.method public onReleased(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 488
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 6
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 495
    const/4 v3, 0x0

    .line 496
    .local v3, intent:Landroid/content/Intent;
    if-ne p2, v4, :cond_4

    .line 499
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->usingFacelock()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$300(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->isInSecurityTimeoutPeriod()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 500
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mIntentList:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mRunwayLauncher:Lcom/motorola/android/widget/RunwayLauncher;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/content/Intent;

    move-object v3, v0

    .line 512
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 513
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$1300(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 516
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$1400(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v4, v5, :cond_7

    .line 517
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$700(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isPukUnlockScreenEnable()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 518
    const-string v4, "LockScreen"

    const-string v5, "Broadcasting intent for PUK unlock UI"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.phone.ACTION_LAUNCH_SIM_UNLOCK_UI"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 520
    .local v1, broadcastIntent:Landroid/content/Intent;
    const-string v4, "ui_type"

    const-string v5, "PUK_LOCKED_UI"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 521
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$1500(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 522
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/LockScreen;->onPause()V

    .line 539
    .end local v1           #broadcastIntent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 502
    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$300(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->setLaunchCameraAfterKeyguardDone(Z)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 530
    :catch_0
    move-exception v2

    .line 531
    .local v2, e:Landroid/content/ActivityNotFoundException;
    const-string v4, "LockScreen"

    const-string v5, "LockScreen threw ActivityNotFoundException"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 532
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->showAppErrorDialog()V

    goto :goto_1

    .line 505
    .end local v2           #e:Landroid/content/ActivityNotFoundException;
    :cond_4
    const/4 v4, 0x2

    if-eq p2, v4, :cond_1

    .line 507
    if-ne p2, v5, :cond_5

    .line 508
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mIntentList:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mRunwayLauncher:Lcom/motorola/android/widget/RunwayLauncher;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/content/Intent;

    move-object v3, v0

    goto :goto_0

    .line 509
    :cond_5
    const/4 v4, 0x4

    if-ne p2, v4, :cond_1

    .line 510
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mIntentList:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mRunwayLauncher:Lcom/motorola/android/widget/RunwayLauncher;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/content/Intent;

    move-object v3, v0

    goto/16 :goto_0

    .line 524
    :cond_6
    const-string v4, "LockScreen"

    const-string v5, "PUK unlock screen is not enabled"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mRunwayLauncher:Lcom/motorola/android/widget/RunwayLauncher;

    invoke-virtual {v4}, Lcom/motorola/android/widget/RunwayLauncher;->reset()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 533
    :catch_1
    move-exception v2

    .line 534
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "LockScreen"

    const-string v5, "LockScreen threw Exception"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 535
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->showAppErrorDialog()V

    goto :goto_1

    .line 528
    .end local v2           #e:Ljava/lang/Exception;
    :cond_7
    :try_start_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #calls: Lcom/android/internal/policy/impl/LockScreen;->requestUnlockScreen()V
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$600(Lcom/android/internal/policy/impl/LockScreen;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method

.method public ping()V
    .locals 2

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mRunwayLauncher:Lcom/motorola/android/widget/RunwayLauncher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/android/widget/RunwayLauncher;->reset(Z)V

    .line 591
    return-void
.end method

.method public reset(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mRunwayLauncher:Lcom/motorola/android/widget/RunwayLauncher;

    invoke-virtual {v0, p1}, Lcom/motorola/android/widget/RunwayLauncher;->reset(Z)V

    .line 587
    return-void
.end method

.method public updateResources()V
    .locals 7

    .prologue
    const/high16 v6, 0x1000

    .line 447
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$1100(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 448
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 449
    .local v4, prefActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 450
    .local v5, outFilters:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    const/4 v0, 0x0

    invoke-virtual {v2, v5, v4, v0}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 451
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mIntentList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 453
    const/4 v3, 0x0

    .line 455
    .local v3, intent:Landroid/content/Intent;
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v0, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 456
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 457
    const/4 v1, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->setTargetResources(ILandroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V

    .line 459
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mIsTablet:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$1200(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "http://about:home"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    .line 461
    const-string v0, "android.intent.category.BROWSABLE"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 462
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 463
    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 469
    :goto_0
    const/4 v1, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->setTargetResources(ILandroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V

    .line 471
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 472
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 473
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mIsTablet:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$1200(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 474
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    const-string v0, "android.intent.category.APP_GALLERY"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    :goto_1
    const/4 v1, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->setTargetResources(ILandroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V

    .line 481
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mRunwayLauncher:Lcom/motorola/android/widget/RunwayLauncher;

    iget v1, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mHideRunwayTarget:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/widget/RunwayLauncher;->setHideRunwayTarget(I)V

    .line 483
    return-void

    .line 465
    :cond_0
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v0, "android.intent.action.DIAL"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 466
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v0, "tel:"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 467
    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 478
    :cond_1
    const-string v0, "vnd.android-dir/mms-sms"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

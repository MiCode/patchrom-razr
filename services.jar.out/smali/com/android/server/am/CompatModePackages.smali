.class public Lcom/android/server/am/CompatModePackages;
.super Ljava/lang/Object;
.source "CompatModePackages.java"


# static fields
.field public static final COMPAT_FLAG_DONT_ASK:I = 0x1

.field public static final COMPAT_FLAG_ENABLED:I = 0x2

.field private static final IS_WEBTOP_UI_ENABLED:Z = true

.field private static final MSG_WRITE:I = 0x1


# instance fields
.field private final DEBUG_CONFIGURATION:Z

.field private final TAG:Ljava/lang/String;

.field private final mFile:Lcom/android/internal/os/AtomicFile;

.field private final mHandler:Landroid/os/Handler;

.field private final mPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mWebtopPackageWhitelist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWebtopProcessWhitelist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/File;)V
    .locals 12
    .parameter "service"
    .parameter "systemDir"

    .prologue
    const/4 v11, 0x2

    .line 91
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v8, "ActivityManager"

    iput-object v8, p0, Lcom/android/server/am/CompatModePackages;->TAG:Ljava/lang/String;

    .line 41
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/am/CompatModePackages;->DEBUG_CONFIGURATION:Z

    .line 51
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    .line 55
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    iput-object v8, p0, Lcom/android/server/am/CompatModePackages;->mWebtopProcessWhitelist:Ljava/util/Set;

    .line 56
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    iput-object v8, p0, Lcom/android/server/am/CompatModePackages;->mWebtopPackageWhitelist:Ljava/util/Set;

    .line 78
    new-instance v8, Lcom/android/server/am/CompatModePackages$1;

    invoke-direct {v8, p0}, Lcom/android/server/am/CompatModePackages$1;-><init>(Lcom/android/server/am/CompatModePackages;)V

    iput-object v8, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Landroid/os/Handler;

    .line 92
    iput-object p1, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 93
    new-instance v8, Lcom/android/internal/os/AtomicFile;

    new-instance v9, Ljava/io/File;

    const-string v10, "packages-compat.xml"

    invoke-direct {v9, p2, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v8, p0, Lcom/android/server/am/CompatModePackages;->mFile:Lcom/android/internal/os/AtomicFile;

    .line 95
    const/4 v2, 0x0

    .line 97
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_0
    iget-object v8, p0, Lcom/android/server/am/CompatModePackages;->mFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v8}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 98
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 99
    .local v5, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v8, 0x0

    invoke-interface {v5, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 100
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 101
    .local v1, eventType:I
    :goto_0
    if-eq v1, v11, :cond_0

    .line 102
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 104
    :cond_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 105
    .local v7, tagName:Ljava/lang/String;
    const-string v8, "compat-packages"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 106
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 108
    :cond_1
    if-ne v1, v11, :cond_3

    .line 109
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 110
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-ne v8, v11, :cond_3

    .line 111
    const-string v8, "pkg"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 112
    const/4 v8, 0x0

    const-string v9, "name"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 113
    .local v6, pkg:Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 114
    const/4 v8, 0x0

    const-string v9, "mode"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 115
    .local v3, mode:Ljava/lang/String;
    const/4 v4, 0x0

    .line 116
    .local v4, modeInt:I
    if-eqz v3, :cond_2

    .line 118
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v4

    .line 122
    :cond_2
    :goto_1
    :try_start_2
    iget-object v8, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .end local v3           #mode:Ljava/lang/String;
    .end local v4           #modeInt:I
    .end local v6           #pkg:Ljava/lang/String;
    :cond_3
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    .line 128
    const/4 v8, 0x1

    if-ne v1, v8, :cond_1

    .line 135
    :cond_4
    if-eqz v2, :cond_5

    .line 137
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 142
    .end local v1           #eventType:I
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v7           #tagName:Ljava/lang/String;
    :cond_5
    :goto_2
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    const-string v8, "ActivityManager"

    const-string v9, "Error reading compat-packages"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 135
    if-eqz v2, :cond_5

    .line 137
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 138
    :catch_1
    move-exception v8

    goto :goto_2

    .line 132
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v0

    .line 133
    .local v0, e:Ljava/io/IOException;
    if-eqz v2, :cond_6

    :try_start_6
    const-string v8, "ActivityManager"

    const-string v9, "Error reading compat-packages"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 135
    :cond_6
    if-eqz v2, :cond_5

    .line 137
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 138
    :catch_3
    move-exception v8

    goto :goto_2

    .line 135
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    if-eqz v2, :cond_7

    .line 137
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 139
    :cond_7
    :goto_3
    throw v8

    .line 119
    .restart local v1       #eventType:I
    .restart local v3       #mode:Ljava/lang/String;
    .restart local v4       #modeInt:I
    .restart local v5       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #pkg:Ljava/lang/String;
    .restart local v7       #tagName:Ljava/lang/String;
    :catch_4
    move-exception v8

    goto :goto_1

    .line 138
    .end local v3           #mode:Ljava/lang/String;
    .end local v4           #modeInt:I
    .end local v6           #pkg:Ljava/lang/String;
    :catch_5
    move-exception v8

    goto :goto_2

    .end local v1           #eventType:I
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v7           #tagName:Ljava/lang/String;
    :catch_6
    move-exception v9

    goto :goto_3
.end method

.method private getPackageFlags(Ljava/lang/String;)I
    .locals 2
    .parameter "packageName"

    .prologue
    .line 149
    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 150
    .local v0, flags:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isCompatModeEnabled(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2
    .parameter "ai"

    .prologue
    const/4 v0, 0x0

    .line 537
    invoke-direct {p0, p1}, Lcom/android/server/am/CompatModePackages;->isInWebtopWhitelists(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Landroid/util/DisplayMetrics;->IS_WEBTOP_ENABLED:Z

    if-eqz v1, :cond_1

    .line 540
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/am/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isInWebtopWhitelists(Landroid/content/pm/ApplicationInfo;)Z
    .locals 5
    .parameter "ai"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 328
    if-nez p1, :cond_1

    .line 329
    const-string v2, "ActivityManager"

    const-string v3, "Cannot check webtop white list info from a null ApplicationInfo, returning."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_0
    :goto_0
    return v1

    .line 334
    :cond_1
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.android.cts"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 335
    goto :goto_0

    .line 339
    :cond_2
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 341
    .local v0, processName:Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/android/server/am/CompatModePackages;->mWebtopPackageWhitelist:Ljava/util/Set;

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/server/am/CompatModePackages;->mWebtopProcessWhitelist:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 339
    .end local v0           #processName:Ljava/lang/String;
    :cond_4
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    goto :goto_1
.end method

.method private setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V
    .locals 18
    .parameter "ai"
    .parameter "mode"

    .prologue
    .line 346
    if-nez p1, :cond_1

    .line 347
    const-string v15, "ActivityManager"

    const-string v16, "Ignoring webtop compat mode change due to null ApplicationInfo."

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    sget-boolean v15, Landroid/util/DisplayMetrics;->IS_WEBTOP_ENABLED:Z

    if-eqz v15, :cond_2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/CompatModePackages;->isInWebtopWhitelists(Landroid/content/pm/ApplicationInfo;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 351
    const-string v15, "ActivityManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Ignoring webtop compat mode change of "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "; webtop compatibility never needed"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 357
    :cond_2
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 359
    .local v11, packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/am/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v5

    .line 362
    .local v5, curFlags:I
    packed-switch p2, :pswitch_data_0

    .line 373
    const-string v15, "ActivityManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unknown screen compat mode req #"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "; ignoring"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 364
    :pswitch_0
    const/4 v6, 0x0

    .line 377
    .local v6, enable:Z
    :goto_1
    move v10, v5

    .line 378
    .local v10, newFlags:I
    if-eqz v6, :cond_7

    .line 379
    or-int/lit8 v10, v10, 0x2

    .line 384
    :goto_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v4

    .line 385
    .local v4, ci:Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v4}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 386
    const-string v15, "ActivityManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Ignoring compat mode change of "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "; compatibility never needed"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/4 v10, 0x0

    .line 390
    :cond_3
    invoke-virtual {v4}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 391
    const-string v15, "ActivityManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Ignoring compat mode change of "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "; compatibility always needed"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/4 v10, 0x0

    .line 396
    :cond_4
    if-eq v10, v5, :cond_0

    .line 397
    if-eqz v10, :cond_8

    .line 398
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    :goto_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v4

    .line 406
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/CompatModePackages;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->removeMessages(I)V

    .line 407
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/CompatModePackages;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 408
    .local v9, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/CompatModePackages;->mHandler:Landroid/os/Handler;

    const-wide/16 v16, 0x2710

    move-wide/from16 v0, v16

    invoke-virtual {v15, v9, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 410
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v14

    .line 414
    .local v14, starting:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    iget-object v15, v15, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v7, v15, -0x1

    .local v7, i:I
    :goto_4
    if-ltz v7, :cond_9

    .line 415
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    iget-object v15, v15, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 416
    .local v2, a:Lcom/android/server/am/ActivityRecord;
    iget-object v15, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 417
    const/4 v15, 0x1

    iput-boolean v15, v2, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 418
    if-eqz v14, :cond_5

    if-ne v2, v14, :cond_5

    iget-boolean v15, v2, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v15, :cond_5

    .line 419
    iget-object v15, v14, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/16 v16, 0x100

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 414
    :cond_5
    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    .line 367
    .end local v2           #a:Lcom/android/server/am/ActivityRecord;
    .end local v4           #ci:Landroid/content/res/CompatibilityInfo;
    .end local v6           #enable:Z
    .end local v7           #i:I
    .end local v9           #msg:Landroid/os/Message;
    .end local v10           #newFlags:I
    .end local v14           #starting:Lcom/android/server/am/ActivityRecord;
    :pswitch_1
    const/4 v6, 0x1

    .line 368
    .restart local v6       #enable:Z
    goto/16 :goto_1

    .line 370
    .end local v6           #enable:Z
    :pswitch_2
    and-int/lit8 v15, v5, 0x2

    if-nez v15, :cond_6

    const/4 v6, 0x1

    .line 371
    .restart local v6       #enable:Z
    :goto_5
    goto/16 :goto_1

    .line 370
    .end local v6           #enable:Z
    :cond_6
    const/4 v6, 0x0

    goto :goto_5

    .line 381
    .restart local v6       #enable:Z
    .restart local v10       #newFlags:I
    :cond_7
    and-int/lit8 v10, v10, -0x3

    goto/16 :goto_2

    .line 400
    .restart local v4       #ci:Landroid/content/res/CompatibilityInfo;
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v15, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 426
    .restart local v7       #i:I
    .restart local v9       #msg:Landroid/os/Message;
    .restart local v14       #starting:Lcom/android/server/am/ActivityRecord;
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v7, v15, -0x1

    :goto_6
    if-ltz v7, :cond_d

    .line 427
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 428
    .local v3, app:Lcom/android/server/am/ProcessRecord;
    iget-object v15, v3, Lcom/android/server/am/ProcessRecord;->pkgList:Ljava/util/HashSet;

    invoke-virtual {v15, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_b

    .line 426
    :cond_a
    :goto_7
    add-int/lit8 v7, v7, -0x1

    goto :goto_6

    .line 432
    :cond_b
    sget-boolean v15, Landroid/util/DisplayMetrics;->IS_WEBTOP_ENABLED:Z

    if-eqz v15, :cond_c

    .line 434
    const/4 v15, 0x1

    iput-boolean v15, v3, Lcom/android/server/am/ProcessRecord;->waitingToFinish:Z

    .line 435
    const-string v15, "ActivityManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " is waiting to finish set to "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-boolean v0, v3, Lcom/android/server/am/ProcessRecord;->waitingToFinish:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v15, v3, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 439
    .local v13, size:I
    const/4 v8, 0x0

    .local v8, j:I
    :goto_8
    if-ge v8, v13, :cond_c

    .line 440
    iget-object v15, v3, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ActivityRecord;

    .line 441
    .local v12, r:Lcom/android/server/am/ActivityRecord;
    const/4 v15, 0x1

    iput-boolean v15, v12, Lcom/android/server/am/ActivityRecord;->waitingToFinish:Z

    .line 442
    const-string v15, "ActivityManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " is waiting to finish set to "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-boolean v0, v12, Lcom/android/server/am/ActivityRecord;->waitingToFinish:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 447
    .end local v8           #j:I
    .end local v12           #r:Lcom/android/server/am/ActivityRecord;
    .end local v13           #size:I
    :cond_c
    :try_start_0
    iget-object v15, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v15, :cond_a

    .line 450
    iget-object v15, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v15, v11, v4}, Landroid/app/IApplicationThread;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 452
    :catch_0
    move-exception v15

    goto :goto_7

    .line 456
    .end local v3           #app:Lcom/android/server/am/ProcessRecord;
    :cond_d
    if-eqz v14, :cond_0

    .line 457
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v14, v0}, Lcom/android/server/am/ActivityStack;->ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;I)Z

    .line 460
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v14, v0}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    goto/16 :goto_0

    .line 362
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;
    .locals 1
    .parameter "ai"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;Landroid/content/res/Configuration;)Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    return-object v0
.end method

.method public compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;Landroid/content/res/Configuration;)Landroid/content/res/CompatibilityInfo;
    .locals 6
    .parameter "ai"
    .parameter "config"

    .prologue
    .line 187
    new-instance v0, Landroid/content/res/CompatibilityInfo;

    iget v2, p2, Landroid/content/res/Configuration;->screenLayout:I

    iget v3, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-direct {p0, p1}, Lcom/android/server/am/CompatModePackages;->isCompatModeEnabled(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    invoke-direct {p0, p1}, Lcom/android/server/am/CompatModePackages;->isInWebtopWhitelists(Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZZ)V

    .line 196
    .local v0, ci:Landroid/content/res/CompatibilityInfo;
    return-object v0
.end method

.method public computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I
    .locals 6
    .parameter "ai"

    .prologue
    .line 202
    invoke-direct {p0, p1}, Lcom/android/server/am/CompatModePackages;->isCompatModeEnabled(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    .line 204
    .local v4, enabled:Z
    new-instance v0, Landroid/content/res/CompatibilityInfo;

    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v1, Landroid/content/res/Configuration;->screenLayout:I

    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-direct {p0, p1}, Lcom/android/server/am/CompatModePackages;->isInWebtopWhitelists(Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZZ)V

    .line 212
    .local v0, info:Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v0}, Landroid/content/res/CompatibilityInfo;->needsWebtopCompat()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Landroid/util/DisplayMetrics;->IS_WEBTOP_ENABLED:Z

    if-eqz v1, :cond_1

    .line 214
    if-eqz v4, :cond_0

    const/4 v1, -0x5

    .line 225
    :goto_0
    return v1

    .line 214
    :cond_0
    const/4 v1, -0x4

    goto :goto_0

    .line 219
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 220
    const/4 v1, -0x2

    goto :goto_0

    .line 222
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 223
    const/4 v1, -0x1

    goto :goto_0

    .line 225
    :cond_3
    if-eqz v4, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFrontActivityAskCompatModeLocked()Z
    .locals 3

    .prologue
    .line 230
    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 231
    .local v0, r:Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_0

    .line 232
    const/4 v1, 0x0

    .line 234
    :goto_0
    return v1

    :cond_0
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/am/CompatModePackages;->getPackageAskCompatModeLocked(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public getFrontActivityScreenCompatModeLocked()I
    .locals 3

    .prologue
    .line 285
    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 286
    .local v0, r:Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_0

    .line 287
    const/4 v1, -0x3

    .line 289
    :goto_0
    return v1

    :cond_0
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v1}, Lcom/android/server/am/CompatModePackages;->computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I

    move-result v1

    goto :goto_0
.end method

.method public getPackageAskCompatModeLocked(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lcom/android/server/am/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPackageScreenCompatModeLocked(Ljava/lang/String;)I
    .locals 3
    .parameter "packageName"

    .prologue
    .line 302
    const/4 v0, 0x0

    .line 304
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 307
    :goto_0
    if-nez v0, :cond_0

    .line 308
    const/4 v1, -0x3

    .line 310
    :goto_1
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/CompatModePackages;->computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I

    move-result v1

    goto :goto_1

    .line 305
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getPackages()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    return-object v0
.end method

.method public handlePackageAddedLocked(Ljava/lang/String;Z)V
    .locals 7
    .parameter "packageName"
    .parameter "updated"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 154
    const/4 v0, 0x0

    .line 156
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, p1, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 159
    :goto_0
    if-nez v0, :cond_1

    .line 178
    :cond_0
    :goto_1
    return-void

    .line 162
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/am/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    .line 163
    .local v1, ci:Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v5

    if-nez v5, :cond_2

    move v2, v4

    .line 167
    .local v2, mayCompat:Z
    :cond_2
    if-eqz p2, :cond_0

    sget-boolean v5, Landroid/util/DisplayMetrics;->IS_WEBTOP_ENABLED:Z

    if-nez v5, :cond_0

    .line 171
    if-nez v2, :cond_0

    iget-object v5, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 172
    iget-object v5, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v5, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 174
    iget-object v5, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 175
    .local v3, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x2710

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 157
    .end local v1           #ci:Landroid/content/res/CompatibilityInfo;
    .end local v2           #mayCompat:Z
    .end local v3           #msg:Landroid/os/Message;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method saveCompatModes()V
    .locals 17

    .prologue
    .line 467
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    .line 468
    :try_start_0
    new-instance v14, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-direct {v14, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 469
    .local v14, pkgs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    const/4 v9, 0x0

    .line 474
    .local v9, fos:Ljava/io/FileOutputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/CompatModePackages;->mFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v5}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v9

    .line 475
    new-instance v12, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v12}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 476
    .local v12, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string v5, "utf-8"

    invoke-interface {v12, v9, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 477
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v12, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 478
    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v6, 0x1

    invoke-interface {v12, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 479
    const/4 v5, 0x0

    const-string v6, "compat-packages"

    invoke-interface {v12, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 481
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v15

    .line 482
    .local v15, pm:Landroid/content/pm/IPackageManager;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, v5, Landroid/content/res/Configuration;->screenLayout:I

    .line 483
    .local v3, screenLayout:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 484
    .local v4, smallestScreenWidthDp:I
    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 485
    .local v10, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 486
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 487
    .local v8, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 488
    .local v13, pkg:Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v11

    .line 489
    .local v11, mode:I
    if-eqz v11, :cond_0

    .line 492
    const/4 v2, 0x0

    .line 494
    .local v2, ai:Landroid/content/pm/ApplicationInfo;
    const/4 v5, 0x0

    :try_start_2
    invoke-interface {v15, v13, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    .line 497
    :goto_1
    if-eqz v2, :cond_0

    .line 500
    :try_start_3
    new-instance v1, Landroid/content/res/CompatibilityInfo;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/am/CompatModePackages;->isInWebtopWhitelists(Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    invoke-direct/range {v1 .. v6}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZZ)V

    .line 508
    .local v1, info:Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-boolean v5, Landroid/util/DisplayMetrics;->IS_WEBTOP_ENABLED:Z

    if-eqz v5, :cond_0

    .line 511
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-boolean v5, Landroid/util/DisplayMetrics;->IS_WEBTOP_ENABLED:Z

    if-eqz v5, :cond_0

    .line 515
    :cond_2
    const/4 v5, 0x0

    const-string v6, "pkg"

    invoke-interface {v12, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 516
    const/4 v5, 0x0

    const-string v6, "name"

    invoke-interface {v12, v5, v6, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 517
    const/4 v5, 0x0

    const-string v6, "mode"

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v12, v5, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 518
    const/4 v5, 0x0

    const-string v6, "pkg"

    invoke-interface {v12, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 525
    .end local v1           #info:Landroid/content/res/CompatibilityInfo;
    .end local v2           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v3           #screenLayout:I
    .end local v4           #smallestScreenWidthDp:I
    .end local v8           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v10           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v11           #mode:I
    .end local v12           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v13           #pkg:Ljava/lang/String;
    .end local v15           #pm:Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v7

    .line 526
    .local v7, e1:Ljava/io/IOException;
    const-string v5, "ActivityManager"

    const-string v6, "Error writing compat packages"

    invoke-static {v5, v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 527
    if-eqz v9, :cond_3

    .line 528
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/CompatModePackages;->mFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v5, v9}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 531
    .end local v7           #e1:Ljava/io/IOException;
    :cond_3
    :goto_2
    return-void

    .line 469
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .end local v14           #pkgs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 521
    .restart local v3       #screenLayout:I
    .restart local v4       #smallestScreenWidthDp:I
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    .restart local v10       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .restart local v12       #out:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v14       #pkgs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v15       #pm:Landroid/content/pm/IPackageManager;
    :cond_4
    const/4 v5, 0x0

    :try_start_5
    const-string v6, "compat-packages"

    invoke-interface {v12, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 522
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 524
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/CompatModePackages;->mFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v5, v9}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 495
    .restart local v2       #ai:Landroid/content/pm/ApplicationInfo;
    .restart local v8       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v11       #mode:I
    .restart local v13       #pkg:Ljava/lang/String;
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method public setFrontActivityAskCompatModeLocked(Z)V
    .locals 3
    .parameter "ask"

    .prologue
    .line 242
    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 243
    .local v0, r:Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 244
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/CompatModePackages;->setPackageAskCompatModeLocked(Ljava/lang/String;Z)V

    .line 246
    :cond_0
    return-void
.end method

.method public setFrontActivityScreenCompatModeLocked(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 293
    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 294
    .local v0, r:Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_0

    .line 295
    const-string v1, "ActivityManager"

    const-string v2, "setFrontActivityScreenCompatMode failed: no top activity"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :goto_0
    return-void

    .line 298
    :cond_0
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v1, p1}, Lcom/android/server/am/CompatModePackages;->setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V

    goto :goto_0
.end method

.method public setPackageAskCompatModeLocked(Ljava/lang/String;Z)V
    .locals 10
    .parameter "packageName"
    .parameter "ask"

    .prologue
    const/4 v9, 0x1

    .line 250
    sget-boolean v6, Landroid/util/DisplayMetrics;->IS_WEBTOP_ENABLED:Z

    if-eqz v6, :cond_2

    .line 251
    const/4 v0, 0x0

    .line 253
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    .line 254
    .local v5, pm:Landroid/content/pm/IPackageManager;
    if-eqz v5, :cond_0

    .line 255
    const/4 v6, 0x0

    invoke-interface {v5, p1, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 262
    .end local v5           #pm:Landroid/content/pm/IPackageManager;
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/android/server/am/CompatModePackages;->isInWebtopWhitelists(Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 263
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring webtop compat mode change of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; webtop compatibility never needed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :cond_1
    :goto_1
    return-void

    .line 257
    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .line 258
    .local v2, e:Landroid/os/RemoteException;
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got a RemoteException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 270
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/am/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v1

    .line 271
    .local v1, curFlags:I
    if-eqz p2, :cond_3

    and-int/lit8 v4, v1, -0x2

    .line 272
    .local v4, newFlags:I
    :goto_2
    if-eq v1, v4, :cond_1

    .line 273
    if-eqz v4, :cond_4

    .line 274
    iget-object v6, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :goto_3
    iget-object v6, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 279
    iget-object v6, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 280
    .local v3, msg:Landroid/os/Message;
    iget-object v6, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x2710

    invoke-virtual {v6, v3, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 271
    .end local v3           #msg:Landroid/os/Message;
    .end local v4           #newFlags:I
    :cond_3
    or-int/lit8 v4, v1, 0x1

    goto :goto_2

    .line 276
    .restart local v4       #newFlags:I
    :cond_4
    iget-object v6, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method public setPackageScreenCompatModeLocked(Ljava/lang/String;I)V
    .locals 4
    .parameter "packageName"
    .parameter "mode"

    .prologue
    .line 314
    const/4 v0, 0x0

    .line 316
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 319
    :goto_0
    if-nez v0, :cond_0

    .line 320
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPackageScreenCompatMode failed: unknown package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :goto_1
    return-void

    .line 323
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/server/am/CompatModePackages;->setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V

    goto :goto_1

    .line 317
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public updateWebtopWhitelists(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mWebtopProcessWhitelist:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 62
    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mWebtopPackageWhitelist:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107003a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "ActivityManager"

    const-string v2, "Failed loading webtop whitelist."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

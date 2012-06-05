.class public final Lcom/android/server/DropBoxManagerService;
.super Lcom/android/internal/os/IDropBoxManagerService$Stub;
.source "DropBoxManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DropBoxManagerService$EntryFile;,
        Lcom/android/server/DropBoxManagerService$FileList;
    }
.end annotation


# static fields
.field private static final DEFAULT_AGE_SECONDS:I = 0x3f480

.field private static final DEFAULT_MAX_FILES:I = 0x3e8

.field private static final DEFAULT_MAX_FILES_DEBUG:I = 0x2710

.field private static final DEFAULT_QUOTA_KB:I = 0x1400

.field private static final DEFAULT_QUOTA_KB_DEBUG:I = 0xc800

.field private static final DEFAULT_QUOTA_PERCENT:I = 0xa

.field private static final DEFAULT_RESERVE_PERCENT:I = 0xa

.field private static final PROFILE_DUMP:Z = false

.field private static final QUOTA_RESCAN_MILLIS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "DropBoxManagerService"

.field private static final isUserBuild:Z


# instance fields
.field private mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

.field private mBlockSize:I

.field private volatile mBooted:Z

.field private mCachedQuotaBlocks:I

.field private mCachedQuotaUptimeMillis:J

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mDropBoxDir:Ljava/io/File;

.field private mFilesByTag:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/DropBoxManagerService$FileList;",
            ">;"
        }
    .end annotation
.end field

.field private mLastTimestamp:J

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStatFs:Landroid/os/StatFs;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 87
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/DropBoxManagerService;->isUserBuild:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 6
    .parameter "context"
    .parameter "path"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 152
    invoke-direct {p0}, Lcom/android/internal/os/IDropBoxManagerService$Stub;-><init>()V

    .line 102
    iput-object v2, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 103
    iput-object v2, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    .line 107
    iput-object v2, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    .line 108
    iput v1, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    .line 109
    iput v1, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    .line 110
    iput-wide v3, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    .line 113
    iput-wide v3, p0, Lcom/android/server/DropBoxManagerService;->mLastTimestamp:J

    .line 115
    iput-boolean v1, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    .line 118
    new-instance v1, Lcom/android/server/DropBoxManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/DropBoxManagerService$1;-><init>(Lcom/android/server/DropBoxManagerService;)V

    iput-object v1, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 153
    iput-object p2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    .line 156
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 159
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 160
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 164
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-instance v4, Lcom/android/server/DropBoxManagerService$2;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5, p1}, Lcom/android/server/DropBoxManagerService$2;-><init>(Lcom/android/server/DropBoxManagerService;Landroid/os/Handler;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 174
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/DropBoxManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/DropBoxManagerService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/server/DropBoxManagerService;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->init()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/DropBoxManagerService;)J
    .locals 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/server/DropBoxManagerService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/DropBoxManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private declared-synchronized createEntry(Ljava/io/File;Ljava/lang/String;I)J
    .locals 20
    .parameter "temp"
    .parameter "tag"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 680
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 686
    .local v6, t:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v3, v3, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    new-instance v4, Lcom/android/server/DropBoxManagerService$EntryFile;

    const-wide/16 v8, 0x2710

    add-long/2addr v8, v6

    invoke-direct {v4, v8, v9}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v19

    .line 687
    .local v19, tail:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    const/4 v11, 0x0

    .line 689
    .local v11, future:[Lcom/android/server/DropBoxManagerService$EntryFile;
    const/4 v2, 0x0

    .line 692
    .local v2, file:Lcom/android/server/DropBoxManagerService$EntryFile;
    invoke-interface/range {v19 .. v19}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 693
    invoke-interface/range {v19 .. v19}, Ljava/util/SortedSet;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    .end local v11           #future:[Lcom/android/server/DropBoxManagerService$EntryFile;
    check-cast v11, [Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 694
    .restart local v11       #future:[Lcom/android/server/DropBoxManagerService$EntryFile;
    invoke-interface/range {v19 .. v19}, Ljava/util/SortedSet;->clear()V

    .line 697
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v3, v3, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 698
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v3, v3, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-wide v3, v3, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    const-wide/16 v8, 0x1

    add-long/2addr v3, v8

    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 701
    :cond_1
    if-eqz v11, :cond_5

    .line 702
    move-object v10, v11

    .local v10, arr$:[Lcom/android/server/DropBoxManagerService$EntryFile;
    array-length v14, v10

    .local v14, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_0
    if-ge v12, v14, :cond_5

    aget-object v13, v10, v12

    .line 703
    .local v13, late:Lcom/android/server/DropBoxManagerService$EntryFile;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v4, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v5, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 704
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    iget-object v4, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/DropBoxManagerService$FileList;

    .line 705
    .local v18, tagFiles:Lcom/android/server/DropBoxManagerService$FileList;
    if-eqz v18, :cond_2

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v3, v13}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 706
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v4, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v3, v4

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 708
    :cond_2
    iget v3, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_4

    .line 711
    iget-object v3, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    .line 712
    .local v15, path:Ljava/lang/String;
    new-instance v2, Lcom/android/server/DropBoxManagerService$EntryFile;

    .end local v2           #file:Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-object v3, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v5, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    const-wide/16 v8, 0x1

    add-long v16, v6, v8

    .end local v6           #t:J
    .local v16, t:J
    iget v8, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    invoke-direct/range {v2 .. v9}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    .line 714
    .restart local v2       #file:Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-object v3, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/DropBoxManagerService;->isStrictModeTag(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 715
    const-string v3, "DropBoxManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "renaming "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    move-wide/from16 v6, v16

    .line 702
    .end local v15           #path:Ljava/lang/String;
    .end local v16           #t:J
    .restart local v6       #t:J
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 731
    .end local v10           #arr$:[Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v12           #i$:I
    .end local v13           #late:Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v14           #len$:I
    .end local v18           #tagFiles:Lcom/android/server/DropBoxManagerService$FileList;
    :cond_5
    if-nez p1, :cond_7

    .line 746
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/DropBoxManagerService;->isStrictModeTag(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v2, :cond_6

    iget-object v3, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    if-eqz v3, :cond_6

    .line 747
    const-string v3, "DropBoxManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StrictMode violation detected, see "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for details"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 751
    :cond_6
    monitor-exit p0

    return-wide v6

    .line 743
    :cond_7
    :try_start_1
    new-instance v2, Lcom/android/server/DropBoxManagerService$EntryFile;

    .end local v2           #file:Lcom/android/server/DropBoxManagerService$EntryFile;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move/from16 v8, p3

    invoke-direct/range {v2 .. v9}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    .line 744
    .restart local v2       #file:Lcom/android/server/DropBoxManagerService$EntryFile;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 680
    .end local v2           #file:Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v6           #t:J
    .end local v11           #future:[Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v19           #tail:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    .locals 4
    .parameter "entry"

    .prologue
    .line 661
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v1, v1, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 662
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v2, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v3, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 667
    iget-object v1, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    if-lez v1, :cond_1

    .line 668
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$FileList;

    .line 669
    .local v0, tagFiles:Lcom/android/server/DropBoxManagerService$FileList;
    if-nez v0, :cond_0

    .line 670
    new-instance v0, Lcom/android/server/DropBoxManagerService$FileList;

    .end local v0           #tagFiles:Lcom/android/server/DropBoxManagerService$FileList;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/DropBoxManagerService$FileList;-><init>(Lcom/android/server/DropBoxManagerService$1;)V

    .line 671
    .restart local v0       #tagFiles:Lcom/android/server/DropBoxManagerService$FileList;
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    :cond_0
    iget-object v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 674
    iget v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 676
    .end local v0           #tagFiles:Lcom/android/server/DropBoxManagerService$FileList;
    :cond_1
    monitor-exit p0

    return-void

    .line 661
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized init()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 617
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    if-nez v7, :cond_1

    .line 618
    iget-object v7, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-nez v7, :cond_0

    .line 619
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t mkdir: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 617
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 622
    :cond_0
    :try_start_1
    new-instance v7, Landroid/os/StatFs;

    iget-object v8, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    .line 623
    iget-object v7, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    iput v7, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 629
    :cond_1
    :try_start_2
    iget-object v7, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    if-nez v7, :cond_6

    .line 630
    iget-object v7, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 631
    .local v4, files:[Ljava/io/File;
    if-nez v4, :cond_2

    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t list files: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 624
    .end local v4           #files:[Ljava/io/File;
    :catch_0
    move-exception v1

    .line 625
    .local v1, e:Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t statfs: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 633
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v4       #files:[Ljava/io/File;
    :cond_2
    new-instance v7, Lcom/android/server/DropBoxManagerService$FileList;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/android/server/DropBoxManagerService$FileList;-><init>(Lcom/android/server/DropBoxManagerService$1;)V

    iput-object v7, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 634
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    .line 637
    move-object v0, v4

    .local v0, arr$:[Ljava/io/File;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_6

    aget-object v3, v0, v5

    .line 638
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".tmp"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 639
    const-string v7, "DropBoxManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cleaning temp file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 637
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 644
    :cond_3
    new-instance v2, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget v7, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    invoke-direct {v2, v3, v7}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;I)V

    .line 645
    .local v2, entry:Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-object v7, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-nez v7, :cond_4

    .line 646
    const-string v7, "DropBoxManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unrecognized file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 648
    :cond_4
    iget-wide v7, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_5

    .line 649
    const-string v7, "DropBoxManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid filename: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 654
    :cond_5
    invoke-direct {p0, v2}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 657
    .end local v0           #arr$:[Ljava/io/File;
    .end local v2           #entry:Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #files:[Ljava/io/File;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_6
    monitor-exit p0

    return-void
.end method

.method private isStrictModeTag(Ljava/lang/String;)Z
    .locals 1
    .parameter "tag"

    .prologue
    .line 300
    const-string v0, "system_app_strictmode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data_app_strictmode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized trimToFit()J
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 763
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v25, v0

    const-string v26, "dropbox_age_seconds"

    const v27, 0x3f480

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 768
    .local v3, ageSeconds:I
    const/4 v7, 0x0

    .line 769
    .local v7, default_max_files:I
    sget-boolean v25, Lcom/android/server/DropBoxManagerService;->isUserBuild:Z

    if-eqz v25, :cond_6

    .line 770
    const/16 v7, 0x3e8

    .line 774
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v25, v0

    const-string v26, "dropbox_max_files"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 778
    .local v12, maxFiles:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    mul-int/lit16 v0, v3, 0x3e8

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    sub-long v5, v25, v27

    .line 779
    .local v5, cutoffMillis:J
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_1

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 781
    .local v10, entry:Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-wide v0, v10, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    move-wide/from16 v25, v0

    cmp-long v25, v25, v5

    if-lez v25, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/TreeSet;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v0, v12, :cond_7

    .line 794
    .end local v10           #entry:Lcom/android/server/DropBoxManagerService$EntryFile;
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v23

    .line 795
    .local v23, uptimeMillis:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    move-wide/from16 v25, v0

    const-wide/16 v27, 0x1388

    add-long v25, v25, v27

    cmp-long v25, v23, v25

    if-lez v25, :cond_2

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v25, v0

    const-string v26, "dropbox_quota_percent"

    const/16 v27, 0xa

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 798
    .local v16, quotaPercent:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v25, v0

    const-string v26, "dropbox_reserve_percent"

    const/16 v27, 0xa

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 803
    .local v17, reservePercent:I
    const/4 v8, 0x0

    .line 804
    .local v8, default_quotaKb:I
    sget-boolean v25, Lcom/android/server/DropBoxManagerService;->isUserBuild:Z

    if-eqz v25, :cond_a

    .line 805
    const/16 v8, 0x1400

    .line 809
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v25, v0

    const-string v26, "dropbox_quota_kb"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v15

    .line 816
    .local v15, quotaKb:I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 824
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    .line 825
    .local v4, available:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/StatFs;->getBlockCount()I

    move-result v25

    mul-int v25, v25, v17

    div-int/lit8 v25, v25, 0x64

    sub-int v14, v4, v25

    .line 826
    .local v14, nonreserved:I
    mul-int/lit16 v0, v15, 0x400

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move/from16 v26, v0

    div-int v13, v25, v26

    .line 827
    .local v13, maximum:I
    const/16 v25, 0x0

    mul-int v26, v14, v16

    div-int/lit8 v26, v26, 0x64

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(II)I

    move-result v25

    move/from16 v0, v25

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    .line 828
    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    .line 845
    .end local v4           #available:I
    .end local v8           #default_quotaKb:I
    .end local v13           #maximum:I
    .end local v14           #nonreserved:I
    .end local v15           #quotaKb:I
    .end local v16           #quotaPercent:I
    .end local v17           #reservePercent:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_5

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v22, v0

    .local v22, unsqueezed:I
    const/16 v18, 0x0

    .line 848
    .local v18, squeezed:I
    new-instance v21, Ljava/util/TreeSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 849
    .local v21, tags:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Lcom/android/server/DropBoxManagerService$FileList;>;"
    invoke-virtual/range {v21 .. v21}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/DropBoxManagerService$FileList;

    .line 850
    .local v19, tag:Lcom/android/server/DropBoxManagerService$FileList;
    if-lez v18, :cond_b

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    move/from16 v26, v0

    sub-int v26, v26, v22

    div-int v26, v26, v18

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_b

    .line 856
    .end local v19           #tag:Lcom/android/server/DropBoxManagerService$FileList;
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    move/from16 v25, v0

    sub-int v25, v25, v22

    div-int v20, v25, v18

    .line 859
    .local v20, tagQuota:I
    invoke-virtual/range {v21 .. v21}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/DropBoxManagerService$FileList;

    .line 860
    .restart local v19       #tag:Lcom/android/server/DropBoxManagerService$FileList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_c

    .line 888
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v18           #squeezed:I
    .end local v19           #tag:Lcom/android/server/DropBoxManagerService$FileList;
    .end local v20           #tagQuota:I
    .end local v21           #tags:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Lcom/android/server/DropBoxManagerService$FileList;>;"
    .end local v22           #unsqueezed:I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move/from16 v26, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    mul-int v25, v25, v26

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v25, v0

    monitor-exit p0

    return-wide v25

    .line 772
    .end local v5           #cutoffMillis:J
    .end local v12           #maxFiles:I
    .end local v23           #uptimeMillis:J
    :cond_6
    const/16 v7, 0x2710

    goto/16 :goto_0

    .line 783
    .restart local v5       #cutoffMillis:J
    .restart local v10       #entry:Lcom/android/server/DropBoxManagerService$EntryFile;
    .restart local v12       #maxFiles:I
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    move-object/from16 v25, v0

    iget-object v0, v10, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/DropBoxManagerService$FileList;

    .line 784
    .restart local v19       #tag:Lcom/android/server/DropBoxManagerService$FileList;
    if-eqz v19, :cond_8

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_8

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v25, v0

    iget v0, v10, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 785
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v26, v0

    iget v0, v10, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 786
    :cond_9
    iget-object v0, v10, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    iget-object v0, v10, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 763
    .end local v3           #ageSeconds:I
    .end local v5           #cutoffMillis:J
    .end local v7           #default_max_files:I
    .end local v10           #entry:Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v12           #maxFiles:I
    .end local v19           #tag:Lcom/android/server/DropBoxManagerService$FileList;
    :catchall_0
    move-exception v25

    monitor-exit p0

    throw v25

    .line 807
    .restart local v3       #ageSeconds:I
    .restart local v5       #cutoffMillis:J
    .restart local v7       #default_max_files:I
    .restart local v8       #default_quotaKb:I
    .restart local v12       #maxFiles:I
    .restart local v16       #quotaPercent:I
    .restart local v17       #reservePercent:I
    .restart local v23       #uptimeMillis:J
    :cond_a
    const v8, 0xc800

    goto/16 :goto_2

    .line 817
    .restart local v15       #quotaKb:I
    :catch_0
    move-exception v9

    .line 818
    .local v9, e:Ljava/lang/IllegalArgumentException;
    const/16 v25, 0x0

    :try_start_4
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    .line 819
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 820
    new-instance v25, Ljava/io/IOException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Can\'t restat: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 853
    .end local v8           #default_quotaKb:I
    .end local v9           #e:Ljava/lang/IllegalArgumentException;
    .end local v15           #quotaKb:I
    .end local v16           #quotaPercent:I
    .end local v17           #reservePercent:I
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v18       #squeezed:I
    .restart local v19       #tag:Lcom/android/server/DropBoxManagerService$FileList;
    .restart local v21       #tags:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Lcom/android/server/DropBoxManagerService$FileList;>;"
    .restart local v22       #unsqueezed:I
    :cond_b
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v25, v0

    sub-int v22, v22, v25

    .line 854
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3

    .line 861
    .restart local v20       #tagQuota:I
    :cond_c
    :goto_4
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, v20

    if-le v0, v1, :cond_4

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_4

    .line 862
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 863
    .restart local v10       #entry:Lcom/android/server/DropBoxManagerService$EntryFile;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_d

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v25, v0

    iget v0, v10, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 864
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v26, v0

    iget v0, v10, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 871
    :cond_e
    iget-object v0, v10, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object/from16 v25, v0

    if-eqz v25, :cond_c

    .line 872
    iget-object v0, v10, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/DropBoxManagerService;->isStrictModeTag(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_f

    .line 873
    const-string v25, "DropBoxManagerService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "deleting "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    iget-object v0, v10, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " to conserve space"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :cond_f
    iget-object v0, v10, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_4
.end method


# virtual methods
.method public add(Landroid/os/DropBoxManager$Entry;)V
    .locals 37
    .parameter "entry"

    .prologue
    .line 182
    const/16 v29, 0x0

    .line 183
    .local v29, temp:Ljava/io/File;
    const/16 v25, 0x0

    .line 184
    .local v25, output:Ljava/io/OutputStream;
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getTag()Ljava/lang/String;

    move-result-object v5

    .line 186
    .local v5, tag:Ljava/lang/String;
    const/16 v27, 0x0

    .line 189
    .local v27, path:Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getFlags()I

    move-result v12

    .line 190
    .local v12, flags:I
    and-int/lit8 v4, v12, 0x1

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    .end local v12           #flags:I
    :catch_0
    move-exception v11

    .line 289
    .local v11, e:Ljava/io/IOException;
    :goto_0
    :try_start_1
    const-string v4, "DropBoxManagerService"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Can\'t write: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v4, v0, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    if-eqz v25, :cond_0

    :try_start_2
    invoke-virtual/range {v25 .. v25}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 292
    :cond_0
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 293
    if-eqz v29, :cond_1

    .end local v11           #e:Ljava/io/IOException;
    :goto_2
    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->delete()Z

    .line 295
    :cond_1
    return-void

    .line 192
    .restart local v12       #flags:I
    :cond_2
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->init()V

    .line 193
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/DropBoxManagerService;->isTagEnabled(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v4

    if-nez v4, :cond_4

    .line 291
    if-eqz v25, :cond_3

    :try_start_4
    throw v25
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 292
    :cond_3
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 293
    if-eqz v29, :cond_1

    goto :goto_2

    .line 194
    :cond_4
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v19

    .line 195
    .local v19, max:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 197
    .local v15, lastTrim:J
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    new-array v9, v4, [B

    .line 198
    .local v9, buffer:[B
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    .line 203
    .local v14, input:Ljava/io/InputStream;
    const/16 v28, 0x0

    .line 204
    .local v28, read:I
    :goto_4
    array-length v4, v9

    move/from16 v0, v28

    if-ge v0, v4, :cond_5

    .line 205
    array-length v4, v9

    sub-int v4, v4, v28

    move/from16 v0, v28

    invoke-virtual {v14, v9, v0, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v22

    .line 206
    .local v22, n:I
    if-gtz v22, :cond_b

    .line 213
    .end local v22           #n:I
    :cond_5
    new-instance v30, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "drop"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Thread;->getId()J

    move-result-wide v34

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ".tmp"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 214
    .end local v29           #temp:Ljava/io/File;
    .local v30, temp:Ljava/io/File;
    :try_start_6
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    .line 215
    .local v10, bufferSize:I
    const/16 v4, 0x1000

    if-le v10, v4, :cond_6

    const/16 v10, 0x1000

    .line 216
    :cond_6
    const/16 v4, 0x200

    if-ge v10, v4, :cond_7

    const/16 v10, 0x200

    .line 217
    :cond_7
    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v0, v30

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 218
    .local v13, foutput:Ljava/io/FileOutputStream;
    new-instance v26, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v26

    invoke-direct {v0, v13, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 219
    .end local v25           #output:Ljava/io/OutputStream;
    .local v26, output:Ljava/io/OutputStream;
    :try_start_7
    array-length v4, v9

    move/from16 v0, v28

    if-ne v0, v4, :cond_11

    and-int/lit8 v4, v12, 0x4

    if-nez v4, :cond_11

    .line 220
    new-instance v25, Ljava/util/zip/GZIPOutputStream;

    invoke-direct/range {v25 .. v26}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 221
    .end local v26           #output:Ljava/io/OutputStream;
    .restart local v25       #output:Ljava/io/OutputStream;
    or-int/lit8 v12, v12, 0x4

    .line 225
    :cond_8
    :goto_5
    const/4 v4, 0x0

    :try_start_8
    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v9, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    .line 228
    .local v23, now:J
    sub-long v33, v23, v15

    const-wide/16 v35, 0x7530

    cmp-long v4, v33, v35

    if-lez v4, :cond_9

    .line 229
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v19

    .line 230
    move-wide/from16 v15, v23

    .line 233
    :cond_9
    invoke-virtual {v14, v9}, Ljava/io/InputStream;->read([B)I

    move-result v28

    .line 234
    if-gtz v28, :cond_c

    .line 235
    invoke-static {v13}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 236
    invoke-virtual/range {v25 .. v25}, Ljava/io/OutputStream;->close()V

    .line 237
    const/16 v25, 0x0

    .line 242
    :goto_6
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->length()J

    move-result-wide v17

    .line 243
    .local v17, len:J
    cmp-long v4, v17, v19

    if-lez v4, :cond_d

    .line 244
    const-string v4, "DropBoxManagerService"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Dropping: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " ("

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->length()J

    move-result-wide v34

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " > "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " bytes)"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->delete()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 246
    const/16 v29, 0x0

    .line 251
    .end local v30           #temp:Ljava/io/File;
    .restart local v29       #temp:Ljava/io/File;
    :goto_7
    :try_start_9
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v5, v12}, Lcom/android/server/DropBoxManagerService;->createEntry(Ljava/io/File;Ljava/lang/String;I)J

    move-result-wide v31

    .line 252
    .local v31, time:J
    const/16 v29, 0x0

    .line 268
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v21

    .line 269
    .local v21, myLooper:Landroid/os/Looper;
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    .line 270
    .local v8, booted_:Z
    move-wide/from16 v6, v31

    .line 271
    .local v6, time_:J
    new-instance v3, Lcom/android/server/DropBoxManagerService$3;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/DropBoxManagerService$3;-><init>(Lcom/android/server/DropBoxManagerService;Ljava/lang/String;JZ)V

    .line 282
    .local v3, doBroadcast:Ljava/lang/Runnable;
    if-nez v21, :cond_e

    .line 283
    new-instance v4, Ljava/lang/Thread;

    invoke-direct {v4, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .line 291
    :goto_8
    if-eqz v25, :cond_a

    :try_start_a
    invoke-virtual/range {v25 .. v25}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 292
    :cond_a
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 293
    if-eqz v29, :cond_1

    goto/16 :goto_2

    .line 207
    .end local v3           #doBroadcast:Ljava/lang/Runnable;
    .end local v6           #time_:J
    .end local v8           #booted_:Z
    .end local v10           #bufferSize:I
    .end local v13           #foutput:Ljava/io/FileOutputStream;
    .end local v17           #len:J
    .end local v21           #myLooper:Landroid/os/Looper;
    .end local v23           #now:J
    .end local v31           #time:J
    .restart local v22       #n:I
    :cond_b
    add-int v28, v28, v22

    .line 208
    goto/16 :goto_4

    .line 239
    .end local v22           #n:I
    .end local v29           #temp:Ljava/io/File;
    .restart local v10       #bufferSize:I
    .restart local v13       #foutput:Ljava/io/FileOutputStream;
    .restart local v23       #now:J
    .restart local v30       #temp:Ljava/io/File;
    :cond_c
    :try_start_b
    invoke-virtual/range {v25 .. v25}, Ljava/io/OutputStream;->flush()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_6

    .line 288
    .end local v10           #bufferSize:I
    .end local v13           #foutput:Ljava/io/FileOutputStream;
    .end local v23           #now:J
    :catch_1
    move-exception v11

    move-object/from16 v29, v30

    .end local v30           #temp:Ljava/io/File;
    .restart local v29       #temp:Ljava/io/File;
    goto/16 :goto_0

    .line 249
    .end local v29           #temp:Ljava/io/File;
    .restart local v10       #bufferSize:I
    .restart local v13       #foutput:Ljava/io/FileOutputStream;
    .restart local v17       #len:J
    .restart local v23       #now:J
    .restart local v30       #temp:Ljava/io/File;
    :cond_d
    if-gtz v28, :cond_8

    move-object/from16 v29, v30

    .end local v30           #temp:Ljava/io/File;
    .restart local v29       #temp:Ljava/io/File;
    goto :goto_7

    .line 285
    .restart local v3       #doBroadcast:Ljava/lang/Runnable;
    .restart local v6       #time_:J
    .restart local v8       #booted_:Z
    .restart local v21       #myLooper:Landroid/os/Looper;
    .restart local v31       #time:J
    :cond_e
    :try_start_c
    new-instance v4, Landroid/os/Handler;

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v4, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    goto :goto_8

    .line 291
    .end local v3           #doBroadcast:Ljava/lang/Runnable;
    .end local v6           #time_:J
    .end local v8           #booted_:Z
    .end local v9           #buffer:[B
    .end local v10           #bufferSize:I
    .end local v12           #flags:I
    .end local v13           #foutput:Ljava/io/FileOutputStream;
    .end local v14           #input:Ljava/io/InputStream;
    .end local v15           #lastTrim:J
    .end local v17           #len:J
    .end local v19           #max:J
    .end local v21           #myLooper:Landroid/os/Looper;
    .end local v23           #now:J
    .end local v28           #read:I
    .end local v31           #time:J
    :catchall_0
    move-exception v4

    :goto_a
    if-eqz v25, :cond_f

    :try_start_d
    invoke-virtual/range {v25 .. v25}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    .line 292
    :cond_f
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 293
    if-eqz v29, :cond_10

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->delete()Z

    .line 291
    :cond_10
    throw v4

    :catch_2
    move-exception v33

    goto :goto_b

    .restart local v11       #e:Ljava/io/IOException;
    :catch_3
    move-exception v4

    goto/16 :goto_1

    .end local v11           #e:Ljava/io/IOException;
    .restart local v12       #flags:I
    :catch_4
    move-exception v4

    goto/16 :goto_3

    .restart local v3       #doBroadcast:Ljava/lang/Runnable;
    .restart local v6       #time_:J
    .restart local v8       #booted_:Z
    .restart local v9       #buffer:[B
    .restart local v10       #bufferSize:I
    .restart local v13       #foutput:Ljava/io/FileOutputStream;
    .restart local v14       #input:Ljava/io/InputStream;
    .restart local v15       #lastTrim:J
    .restart local v17       #len:J
    .restart local v19       #max:J
    .restart local v21       #myLooper:Landroid/os/Looper;
    .restart local v23       #now:J
    .restart local v28       #read:I
    .restart local v31       #time:J
    :catch_5
    move-exception v4

    goto :goto_9

    .end local v3           #doBroadcast:Ljava/lang/Runnable;
    .end local v6           #time_:J
    .end local v8           #booted_:Z
    .end local v10           #bufferSize:I
    .end local v13           #foutput:Ljava/io/FileOutputStream;
    .end local v17           #len:J
    .end local v21           #myLooper:Landroid/os/Looper;
    .end local v23           #now:J
    .end local v29           #temp:Ljava/io/File;
    .end local v31           #time:J
    .restart local v30       #temp:Ljava/io/File;
    :catchall_1
    move-exception v4

    move-object/from16 v29, v30

    .end local v30           #temp:Ljava/io/File;
    .restart local v29       #temp:Ljava/io/File;
    goto :goto_a

    .end local v25           #output:Ljava/io/OutputStream;
    .end local v29           #temp:Ljava/io/File;
    .restart local v10       #bufferSize:I
    .restart local v13       #foutput:Ljava/io/FileOutputStream;
    .restart local v26       #output:Ljava/io/OutputStream;
    .restart local v30       #temp:Ljava/io/File;
    :catchall_2
    move-exception v4

    move-object/from16 v25, v26

    .end local v26           #output:Ljava/io/OutputStream;
    .restart local v25       #output:Ljava/io/OutputStream;
    move-object/from16 v29, v30

    .end local v30           #temp:Ljava/io/File;
    .restart local v29       #temp:Ljava/io/File;
    goto :goto_a

    .line 288
    .end local v25           #output:Ljava/io/OutputStream;
    .end local v29           #temp:Ljava/io/File;
    .restart local v26       #output:Ljava/io/OutputStream;
    .restart local v30       #temp:Ljava/io/File;
    :catch_6
    move-exception v11

    move-object/from16 v25, v26

    .end local v26           #output:Ljava/io/OutputStream;
    .restart local v25       #output:Ljava/io/OutputStream;
    move-object/from16 v29, v30

    .end local v30           #temp:Ljava/io/File;
    .restart local v29       #temp:Ljava/io/File;
    goto/16 :goto_0

    .end local v25           #output:Ljava/io/OutputStream;
    .end local v29           #temp:Ljava/io/File;
    .restart local v26       #output:Ljava/io/OutputStream;
    .restart local v30       #temp:Ljava/io/File;
    :cond_11
    move-object/from16 v25, v26

    .end local v26           #output:Ljava/io/OutputStream;
    .restart local v25       #output:Ljava/io/OutputStream;
    goto/16 :goto_5
.end method

.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 31
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 343
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 345
    const-string v3, "Permission Denial: Can\'t dump DropBoxManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    :goto_0
    monitor-exit p0

    return-void

    .line 350
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->init()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 359
    :try_start_2
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    .local v26, out:Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    .local v14, doPrint:Z
    const/4 v13, 0x0

    .line 361
    .local v13, doFile:Z
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 362
    .local v27, searchArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v17, 0x0

    .local v17, i:I
    :goto_1
    if-eqz p3, :cond_6

    move-object/from16 v0, p3

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_6

    .line 363
    aget-object v3, p3, v17

    const-string v4, "-p"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    aget-object v3, p3, v17

    const-string v4, "--print"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 364
    :cond_1
    const/4 v14, 0x1

    .line 362
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 351
    .end local v13           #doFile:Z
    .end local v14           #doPrint:Z
    .end local v17           #i:I
    .end local v26           #out:Ljava/lang/StringBuilder;
    .end local v27           #searchArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v15

    .line 352
    .local v15, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t initialize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 353
    const-string v3, "DropBoxManagerService"

    const-string v4, "Can\'t init"

    invoke-static {v3, v4, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 343
    .end local v15           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 365
    .restart local v13       #doFile:Z
    .restart local v14       #doPrint:Z
    .restart local v17       #i:I
    .restart local v26       #out:Ljava/lang/StringBuilder;
    .restart local v27       #searchArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    :try_start_3
    aget-object v3, p3, v17

    const-string v4, "-f"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    aget-object v3, p3, v17

    const-string v4, "--file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 366
    :cond_3
    const/4 v13, 0x1

    goto :goto_2

    .line 367
    :cond_4
    aget-object v3, p3, v17

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 368
    const-string v3, "Unknown argument: "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p3, v17

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 370
    :cond_5
    aget-object v3, p3, v17

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 374
    :cond_6
    const-string v3, "Drop box contents: "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v4, v4, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/TreeSet;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " entries\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 377
    const-string v3, "Searching for:"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .local v8, a:Ljava/lang/String;
    const-string v3, " "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 379
    .end local v8           #a:Ljava/lang/String;
    :cond_7
    const-string v3, "\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .end local v18           #i$:Ljava/util/Iterator;
    :cond_8
    const/16 v25, 0x0

    .local v25, numFound:I
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 383
    .local v24, numArgs:I
    new-instance v29, Landroid/text/format/Time;

    invoke-direct/range {v29 .. v29}, Landroid/text/format/Time;-><init>()V

    .line 384
    .local v29, time:Landroid/text/format/Time;
    const-string v3, "\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v3, v3, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18       #i$:Ljava/util/Iterator;
    :cond_9
    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 386
    .local v16, entry:Lcom/android/server/DropBoxManagerService$EntryFile;
    move-object/from16 v0, v16

    iget-wide v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 387
    const-string v3, "%Y-%m-%d %H:%M:%S"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 388
    .local v11, date:Ljava/lang/String;
    const/16 v21, 0x1

    .line 389
    .local v21, match:Z
    const/16 v17, 0x0

    :goto_5
    move/from16 v0, v17

    move/from16 v1, v24

    if-ge v0, v1, :cond_c

    if-eqz v21, :cond_c

    .line 390
    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 391
    .local v9, arg:Ljava/lang/String;
    invoke-virtual {v11, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_a
    const/16 v21, 0x1

    .line 389
    :goto_6
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 391
    :cond_b
    const/16 v21, 0x0

    goto :goto_6

    .line 393
    .end local v9           #arg:Ljava/lang/String;
    :cond_c
    if-eqz v21, :cond_9

    .line 395
    add-int/lit8 v25, v25, 0x1

    .line 396
    if-eqz v14, :cond_d

    const-string v3, "========================================\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    :cond_d
    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-nez v3, :cond_e

    const-string v3, "(no tag)"

    :goto_7
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    if-nez v3, :cond_f

    .line 399
    const-string v3, " (no file)\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 397
    :cond_e
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    goto :goto_7

    .line 401
    :cond_f
    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_10

    .line 402
    const-string v3, " (contents lost)\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 405
    :cond_10
    const-string v3, " ("

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_11

    const-string v3, "compressed "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    :cond_11
    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1a

    const-string v3, "text"

    :goto_8
    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    const-string v3, ", "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes)\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    if-nez v13, :cond_12

    if-eqz v14, :cond_14

    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_14

    .line 412
    :cond_12
    if-nez v14, :cond_13

    const-string v3, "    "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    :cond_13
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    :cond_14
    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_19

    if-nez v14, :cond_15

    if-nez v13, :cond_19

    .line 417
    :cond_15
    const/4 v12, 0x0

    .line 418
    .local v12, dbe:Landroid/os/DropBoxManager$Entry;
    const/16 v19, 0x0

    .line 420
    .local v19, isr:Ljava/io/InputStreamReader;
    :try_start_4
    new-instance v2, Landroid/os/DropBoxManager$Entry;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object/from16 v0, v16

    iget v7, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    invoke-direct/range {v2 .. v7}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 423
    .end local v12           #dbe:Landroid/os/DropBoxManager$Entry;
    .local v2, dbe:Landroid/os/DropBoxManager$Entry;
    if-eqz v14, :cond_1e

    .line 424
    :try_start_5
    new-instance v20, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 425
    .end local v19           #isr:Ljava/io/InputStreamReader;
    .local v20, isr:Ljava/io/InputStreamReader;
    const/16 v3, 0x1000

    :try_start_6
    new-array v10, v3, [C

    .line 426
    .local v10, buf:[C
    const/16 v23, 0x0

    .line 428
    .local v23, newline:Z
    :cond_16
    :goto_9
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/io/InputStreamReader;->read([C)I

    move-result v22

    .line 429
    .local v22, n:I
    if-gtz v22, :cond_1b

    .line 439
    if-nez v23, :cond_17

    const-string v3, "\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_17
    move-object/from16 v19, v20

    .line 451
    .end local v10           #buf:[C
    .end local v20           #isr:Ljava/io/InputStreamReader;
    .end local v22           #n:I
    .end local v23           #newline:Z
    .restart local v19       #isr:Ljava/io/InputStreamReader;
    :goto_a
    if-eqz v2, :cond_18

    :try_start_7
    invoke-virtual {v2}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 452
    :cond_18
    if-eqz v19, :cond_19

    .line 454
    :try_start_8
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 461
    .end local v2           #dbe:Landroid/os/DropBoxManager$Entry;
    .end local v19           #isr:Ljava/io/InputStreamReader;
    :cond_19
    :goto_b
    if-eqz v14, :cond_9

    :try_start_9
    const-string v3, "\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 407
    :cond_1a
    const-string v3, "data"
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_8

    .line 430
    .restart local v2       #dbe:Landroid/os/DropBoxManager$Entry;
    .restart local v10       #buf:[C
    .restart local v20       #isr:Ljava/io/InputStreamReader;
    .restart local v22       #n:I
    .restart local v23       #newline:Z
    :cond_1b
    const/4 v3, 0x0

    :try_start_a
    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v10, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 431
    add-int/lit8 v3, v22, -0x1

    aget-char v3, v10, v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1d

    const/16 v23, 0x1

    .line 434
    :goto_c
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/high16 v4, 0x1

    if-le v3, v4, :cond_16

    .line 435
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 436
    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_9

    .line 447
    .end local v10           #buf:[C
    .end local v22           #n:I
    .end local v23           #newline:Z
    :catch_1
    move-exception v15

    move-object/from16 v19, v20

    .line 448
    .end local v20           #isr:Ljava/io/InputStreamReader;
    .restart local v15       #e:Ljava/io/IOException;
    .restart local v19       #isr:Ljava/io/InputStreamReader;
    :goto_d
    :try_start_b
    const-string v3, "*** "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    const-string v3, "DropBoxManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t read: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 451
    if-eqz v2, :cond_1c

    :try_start_c
    invoke-virtual {v2}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 452
    :cond_1c
    if-eqz v19, :cond_19

    .line 454
    :try_start_d
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStreamReader;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_b

    .line 455
    .end local v15           #e:Ljava/io/IOException;
    :catch_2
    move-exception v3

    goto :goto_b

    .line 431
    .end local v19           #isr:Ljava/io/InputStreamReader;
    .restart local v10       #buf:[C
    .restart local v20       #isr:Ljava/io/InputStreamReader;
    .restart local v22       #n:I
    .restart local v23       #newline:Z
    :cond_1d
    const/16 v23, 0x0

    goto :goto_c

    .line 441
    .end local v10           #buf:[C
    .end local v20           #isr:Ljava/io/InputStreamReader;
    .end local v22           #n:I
    .end local v23           #newline:Z
    .restart local v19       #isr:Ljava/io/InputStreamReader;
    :cond_1e
    const/16 v3, 0x46

    :try_start_e
    invoke-virtual {v2, v3}, Landroid/os/DropBoxManager$Entry;->getText(I)Ljava/lang/String;

    move-result-object v28

    .line 442
    .local v28, text:Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x46

    if-ne v3, v4, :cond_20

    const/16 v30, 0x1

    .line 443
    .local v30, truncated:Z
    :goto_e
    const-string v3, "    "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    const/16 v6, 0x2f

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    if-eqz v30, :cond_1f

    const-string v3, " ..."

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    :cond_1f
    const-string v3, "\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    goto/16 :goto_a

    .line 447
    .end local v28           #text:Ljava/lang/String;
    .end local v30           #truncated:Z
    :catch_3
    move-exception v15

    goto :goto_d

    .line 442
    .restart local v28       #text:Ljava/lang/String;
    :cond_20
    const/16 v30, 0x0

    goto :goto_e

    .line 451
    .end local v2           #dbe:Landroid/os/DropBoxManager$Entry;
    .end local v28           #text:Ljava/lang/String;
    .restart local v12       #dbe:Landroid/os/DropBoxManager$Entry;
    :catchall_1
    move-exception v3

    move-object v2, v12

    .end local v12           #dbe:Landroid/os/DropBoxManager$Entry;
    .restart local v2       #dbe:Landroid/os/DropBoxManager$Entry;
    :goto_f
    if-eqz v2, :cond_21

    :try_start_f
    invoke-virtual {v2}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 452
    :cond_21
    if-eqz v19, :cond_22

    .line 454
    :try_start_10
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStreamReader;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4

    .line 451
    :cond_22
    :goto_10
    :try_start_11
    throw v3

    .line 464
    .end local v2           #dbe:Landroid/os/DropBoxManager$Entry;
    .end local v11           #date:Ljava/lang/String;
    .end local v16           #entry:Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v19           #isr:Ljava/io/InputStreamReader;
    .end local v21           #match:Z
    :cond_23
    if-nez v25, :cond_24

    const-string v3, "(No entries found.)\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    :cond_24
    if-eqz p3, :cond_25

    move-object/from16 v0, p3

    array-length v3, v0

    if-nez v3, :cond_27

    .line 467
    :cond_25
    if-nez v14, :cond_26

    const-string v3, "\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    :cond_26
    const-string v3, "Usage: dumpsys dropbox [--print|--file] [YYYY-mm-dd] [HH:MM:SS] [tag]\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    :cond_27
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_0

    .line 455
    .restart local v2       #dbe:Landroid/os/DropBoxManager$Entry;
    .restart local v11       #date:Ljava/lang/String;
    .restart local v16       #entry:Lcom/android/server/DropBoxManagerService$EntryFile;
    .restart local v19       #isr:Ljava/io/InputStreamReader;
    .restart local v21       #match:Z
    :catch_4
    move-exception v4

    goto :goto_10

    .line 451
    :catchall_2
    move-exception v3

    goto :goto_f

    .end local v19           #isr:Ljava/io/InputStreamReader;
    .restart local v20       #isr:Ljava/io/InputStreamReader;
    :catchall_3
    move-exception v3

    move-object/from16 v19, v20

    .end local v20           #isr:Ljava/io/InputStreamReader;
    .restart local v19       #isr:Ljava/io/InputStreamReader;
    goto :goto_f

    .line 447
    .end local v2           #dbe:Landroid/os/DropBoxManager$Entry;
    .restart local v12       #dbe:Landroid/os/DropBoxManager$Entry;
    :catch_5
    move-exception v15

    move-object v2, v12

    .end local v12           #dbe:Landroid/os/DropBoxManager$Entry;
    .restart local v2       #dbe:Landroid/os/DropBoxManager$Entry;
    goto/16 :goto_d
.end method

.method public declared-synchronized getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;
    .locals 11
    .parameter "tag"
    .parameter "millis"

    .prologue
    const/4 v10, 0x0

    .line 310
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_LOGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "READ_LOGS permission required"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 316
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->init()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 322
    if-nez p1, :cond_1

    :try_start_2
    iget-object v9, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 323
    .local v9, list:Lcom/android/server/DropBoxManagerService$FileList;
    :goto_0
    if-nez v9, :cond_2

    move-object v0, v10

    .line 339
    .end local v9           #list:Lcom/android/server/DropBoxManagerService$FileList;
    :goto_1
    monitor-exit p0

    return-object v0

    .line 317
    :catch_0
    move-exception v6

    .line 318
    .local v6, e:Ljava/io/IOException;
    :try_start_3
    const-string v0, "DropBoxManagerService"

    const-string v1, "Can\'t init"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v10

    .line 319
    goto :goto_1

    .line 322
    .end local v6           #e:Ljava/io/IOException;
    :cond_1
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$FileList;

    move-object v9, v0

    goto :goto_0

    .line 325
    .restart local v9       #list:Lcom/android/server/DropBoxManagerService$FileList;
    :cond_2
    iget-object v0, v9, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    new-instance v1, Lcom/android/server/DropBoxManagerService$EntryFile;

    const-wide/16 v2, 0x1

    add-long/2addr v2, p2

    invoke-direct {v1, v2, v3}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 326
    .local v7, entry:Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-object v0, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 327
    iget v0, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 328
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    iget-object v1, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v2, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-direct {v0, v1, v2, v3}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 331
    :cond_4
    :try_start_4
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    iget-object v1, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v2, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    iget-object v4, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    iget v5, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    invoke-direct/range {v0 .. v5}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 333
    :catch_1
    move-exception v6

    .line 334
    .restart local v6       #e:Ljava/io/IOException;
    :try_start_5
    const-string v0, "DropBoxManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t read: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .end local v6           #e:Ljava/io/IOException;
    .end local v7           #entry:Lcom/android/server/DropBoxManagerService$EntryFile;
    :cond_5
    move-object v0, v10

    .line 339
    goto :goto_1
.end method

.method public isTagEnabled(Ljava/lang/String;)Z
    .locals 4
    .parameter "tag"

    .prologue
    .line 305
    const-string v0, "disabled"

    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dropbox:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 179
    return-void
.end method

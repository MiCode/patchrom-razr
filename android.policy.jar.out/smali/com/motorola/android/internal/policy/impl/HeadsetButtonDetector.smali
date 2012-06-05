.class public Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;
.super Ljava/lang/Object;
.source "HeadsetButtonDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DOUBLE_CLICK_KEY_TO_SEND:I = 0x57

#the value of this static final field might be set in the static constructor
.field private static final DOUBLE_CLICK_TIMEOUT:I = 0x0

.field private static final DOUBLE_LONG_PRESS_KEY_TO_SEND:I = 0x59

.field private static final EVENT_LONG_SEQUENCE_DETECTED:I = 0x2

.field private static final EVENT_LONG_SEQUENCE_FINISHED:I = 0x3

.field private static final EVENT_SEND_KEY_UP_TIMEOUT:I = 0x4

.field private static final EVENT_SHORT_SEQUENCE_DETECTED:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final LONG_PRESS_TIMEOUT:I = 0x0

.field private static final SEND_KEY_INTERVAL:I = 0xc8

.field private static final SINGLE_CLICK_KEY_TO_SEND:I = 0x4f

.field private static final SINGLE_LONG_PRESS_KEY_TO_SEND:I = 0x5a

.field private static final TAG:Ljava/lang/String; = "HeadsetBtnDetect"

.field private static final TRIPLE_CLICK_KEY_TO_SEND:I = 0x58

.field private static mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static sInstance:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;


# instance fields
.field mBroadcastSend:Landroid/content/BroadcastReceiver;

.field private mClickCount:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;

.field private mKeyDownFlags:I

.field private mKeyToSend:I

.field private mKeyUpFlags:I

.field private mLongPress:Z

.field private mPreviousUpTimestamp:J

.field private mScanCode:I

.field private mSendIntent:Z

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->LONG_PRESS_TIMEOUT:I

    .line 56
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->DOUBLE_CLICK_TIMEOUT:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 320
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 239
    new-instance v0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$1;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$1;-><init>(Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;)V

    iput-object v0, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mBroadcastSend:Landroid/content/BroadcastReceiver;

    .line 321
    iput-object p1, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mContext:Landroid/content/Context;

    .line 322
    new-instance v0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;-><init>(Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$1;)V

    iput-object v0, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mHandler:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;

    .line 323
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->handleShortSequenceDetected(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->handleLongSequenceDetected(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->handleLongSequenceFinished(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$300(Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->handleSendKeyUpTimeout(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400()Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;
    .locals 2
    .parameter "context"

    .prologue
    .line 252
    const-class v1, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->sInstance:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->sInstance:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;

    .line 255
    :cond_0
    sget-object v0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->sInstance:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleLongSequenceDetected(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 115
    iput-boolean v2, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mLongPress:Z

    .line 116
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 118
    .local v0, numClicks:I
    packed-switch v0, :pswitch_data_0

    .line 140
    :goto_0
    return-void

    .line 122
    :pswitch_0
    const/16 v1, 0x4f

    .line 123
    .local v1, whichKey:I
    invoke-direct {p0, v1, v2, v2}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->sendKeyOrIntentLocked(IZZ)V

    goto :goto_0

    .line 127
    .end local v1           #whichKey:I
    :pswitch_1
    const/16 v1, 0x5a

    .line 128
    .restart local v1       #whichKey:I
    invoke-direct {p0, v1, v2, v2}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->sendKeyOrIntentLocked(IZZ)V

    goto :goto_0

    .line 132
    .end local v1           #whichKey:I
    :pswitch_2
    const/16 v1, 0x59

    .line 133
    .restart local v1       #whichKey:I
    invoke-direct {p0, v1, v2, v2}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->sendKeyOrIntentLocked(IZZ)V

    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleLongSequenceFinished(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 143
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 145
    .local v0, numClicks:I
    packed-switch v0, :pswitch_data_0

    .line 168
    :goto_0
    return-void

    .line 149
    :pswitch_0
    const/16 v1, 0x4f

    .line 150
    .local v1, whichKey:I
    invoke-direct {p0, v1, v2, v3}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->sendKeyOrIntentLocked(IZZ)V

    goto :goto_0

    .line 154
    .end local v1           #whichKey:I
    :pswitch_1
    const/16 v1, 0x5a

    .line 155
    .restart local v1       #whichKey:I
    invoke-direct {p0, v1, v2, v3}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->sendKeyOrIntentLocked(IZZ)V

    goto :goto_0

    .line 159
    .end local v1           #whichKey:I
    :pswitch_2
    const/16 v1, 0x59

    .line 160
    .restart local v1       #whichKey:I
    invoke-direct {p0, v1, v2, v3}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->sendKeyOrIntentLocked(IZZ)V

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleSendKeyUpTimeout(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 174
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 175
    .local v0, keyToSend:I
    invoke-direct {p0, v0, v1, v1}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->sendKeyOrIntentLocked(IZZ)V

    .line 177
    return-void
.end method

.method private handleShortSequenceDetected(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 92
    .local v0, numClicks:I
    packed-switch v0, :pswitch_data_0

    .line 109
    iput v2, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mClickCount:I

    .line 112
    :goto_0
    return-void

    .line 94
    :pswitch_0
    const/16 v1, 0x4f

    .line 95
    .local v1, whichKey:I
    invoke-direct {p0, v1, v3, v2}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->sendKeyOrIntentLocked(IZZ)V

    goto :goto_0

    .line 99
    .end local v1           #whichKey:I
    :pswitch_1
    const/16 v1, 0x57

    .line 100
    .restart local v1       #whichKey:I
    invoke-direct {p0, v1, v3, v2}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->sendKeyOrIntentLocked(IZZ)V

    goto :goto_0

    .line 104
    .end local v1           #whichKey:I
    :pswitch_2
    const/16 v1, 0x58

    .line 105
    .restart local v1       #whichKey:I
    invoke-direct {p0, v1, v3, v2}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->sendKeyOrIntentLocked(IZZ)V

    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private sendKeyOrIntentLocked(IZZ)V
    .locals 17
    .parameter "whichKey"
    .parameter "down"
    .parameter "longPress"

    .prologue
    .line 184
    const/16 v16, 0x1

    .line 189
    .local v16, shouldSend:Z
    if-eqz p2, :cond_2

    .line 191
    const/4 v7, 0x0

    .line 192
    .local v7, action:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mKeyDownFlags:I

    .line 196
    .local v13, flags:I
    if-nez p3, :cond_0

    .line 198
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mClickCount:I

    .line 200
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mHandler:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;

    const/4 v6, 0x4

    const/4 v8, 0x0

    move/from16 v0, p1

    invoke-virtual {v5, v6, v0, v8}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v15

    .line 201
    .local v15, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mHandler:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;

    const-wide/16 v8, 0xc8

    invoke-virtual {v5, v15, v8, v9}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 209
    .end local v15           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mScanCode:I

    .line 210
    .local v12, scanCode:I
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mKeyToSend:I

    .line 211
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 212
    .local v3, curTime:J
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v14, 0x101

    move-wide v5, v3

    move/from16 v8, p1

    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 214
    .local v2, keyEvent:Landroid/view/KeyEvent;
    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mWindowManager:Landroid/view/IWindowManager;

    .line 228
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mWindowManager:Landroid/view/IWindowManager;

    if-eqz v5, :cond_1

    .line 229
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v6, 0x0

    invoke-interface {v5, v2, v6}, Landroid/view/IWindowManager;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :cond_1
    :goto_1
    return-void

    .line 205
    .end local v2           #keyEvent:Landroid/view/KeyEvent;
    .end local v3           #curTime:J
    .end local v7           #action:I
    .end local v12           #scanCode:I
    .end local v13           #flags:I
    :cond_2
    const/4 v7, 0x1

    .line 206
    .restart local v7       #action:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mKeyUpFlags:I

    .restart local v13       #flags:I
    goto :goto_0

    .line 233
    .restart local v2       #keyEvent:Landroid/view/KeyEvent;
    .restart local v3       #curTime:J
    .restart local v12       #scanCode:I
    :catch_0
    move-exception v5

    goto :goto_1
.end method


# virtual methods
.method public passKey(JIZZIII)Z
    .locals 5
    .parameter "when"
    .parameter "keyCode"
    .parameter "isInjected"
    .parameter "sendIntent"
    .parameter "action"
    .parameter "scanCode"
    .parameter "flags"

    .prologue
    .line 266
    const/16 v1, 0x4f

    if-ne p3, v1, :cond_0

    if-eqz p4, :cond_1

    .line 267
    :cond_0
    const/4 v1, 0x0

    .line 314
    :goto_0
    return v1

    .line 270
    :cond_1
    if-nez p6, :cond_5

    .line 271
    iput p8, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mKeyDownFlags:I

    .line 272
    iget v1, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mClickCount:I

    if-lez v1, :cond_2

    .line 273
    iget-wide v1, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mPreviousUpTimestamp:J

    sub-long v1, p1, v1

    sget v3, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->DOUBLE_CLICK_TIMEOUT:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_4

    .line 275
    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mHandler:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;->removeMessages(I)V

    .line 284
    :cond_2
    :goto_1
    iget v1, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mClickCount:I

    if-nez v1, :cond_3

    .line 285
    iput-boolean p5, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mSendIntent:Z

    .line 286
    iput p7, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mScanCode:I

    .line 288
    :cond_3
    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mHandler:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;

    const/4 v2, 0x2

    iget v3, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mClickCount:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 290
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mHandler:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;

    sget v2, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->LONG_PRESS_TIMEOUT:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 314
    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    .line 276
    .end local v0           #msg:Landroid/os/Message;
    :cond_4
    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mHandler:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 280
    const/4 v1, 0x0

    iput v1, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mClickCount:I

    goto :goto_1

    .line 291
    :cond_5
    const/4 v1, 0x1

    if-ne p6, v1, :cond_7

    .line 292
    iput p8, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mKeyUpFlags:I

    .line 293
    iput-wide p1, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mPreviousUpTimestamp:J

    .line 294
    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mHandler:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;->removeMessages(I)V

    .line 295
    iget-boolean v1, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mLongPress:Z

    if-nez v1, :cond_6

    .line 297
    iget v1, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mClickCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mClickCount:I

    .line 298
    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mHandler:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;

    const/4 v2, 0x1

    iget v3, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mClickCount:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 300
    .restart local v0       #msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mHandler:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;

    sget v2, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->DOUBLE_CLICK_TIMEOUT:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 302
    .end local v0           #msg:Landroid/os/Message;
    :cond_6
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mLongPress:Z

    .line 303
    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mHandler:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;

    const/4 v2, 0x3

    iget v3, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mClickCount:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 305
    .restart local v0       #msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mHandler:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;

    invoke-virtual {v1, v0}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 307
    const/4 v1, 0x0

    iput v1, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->mClickCount:I

    goto :goto_2

    .line 311
    .end local v0           #msg:Landroid/os/Message;
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

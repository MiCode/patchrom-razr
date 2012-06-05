.class public final Landroid/util/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/Log$TerribleFailureHandler;,
        Landroid/util/Log$TerribleFailure;
    }
.end annotation


# static fields
.field public static final ASSERT:I = 0x7

.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

.field private static final LOCKED:Ljava/lang/Integer; = null

.field public static final LOG_ID_EVENTS:I = 0x2

.field public static final LOG_ID_MAIN:I = 0x0

.field public static final LOG_ID_RADIO:I = 0x1

.field public static final LOG_ID_SYSTEM:I = 0x3

.field private static STR_ASSERT:Ljava/lang/String; = null

.field private static STR_DEBUG:Ljava/lang/String; = null

.field private static STR_ERROR:Ljava/lang/String; = null

.field private static STR_INFO:Ljava/lang/String; = null

.field private static STR_VERBOSE:Ljava/lang/String; = null

.field private static STR_WARN:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "util.Log"

.field private static final UNLOCKED:Ljava/lang/Integer; = null

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5

.field private static final _inCheckin:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static _instance:Landroid/util/Log;

.field private static _logLevel:I

.field private static _tag:Ljava/lang/String;

.field private static sWtfHandler:Landroid/util/Log$TerribleFailureHandler;


# instance fields
.field private _checkin:Landroid/os/ICheckinService;

.field private _logToCheckin:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 106
    new-instance v0, Landroid/util/Log$1;

    invoke-direct {v0}, Landroid/util/Log$1;-><init>()V

    sput-object v0, Landroid/util/Log;->sWtfHandler:Landroid/util/Log$TerribleFailureHandler;

    .line 131
    const/4 v0, 0x4

    sput v0, Landroid/util/Log;->_logLevel:I

    .line 132
    const/4 v0, 0x0

    sput-object v0, Landroid/util/Log;->_instance:Landroid/util/Log;

    .line 133
    const-string v0, ""

    sput-object v0, Landroid/util/Log;->_tag:Ljava/lang/String;

    .line 136
    const-string v0, "V:"

    sput-object v0, Landroid/util/Log;->STR_VERBOSE:Ljava/lang/String;

    .line 137
    const-string v0, "D:"

    sput-object v0, Landroid/util/Log;->STR_DEBUG:Ljava/lang/String;

    .line 138
    const-string v0, "I:"

    sput-object v0, Landroid/util/Log;->STR_INFO:Ljava/lang/String;

    .line 139
    const-string v0, "W:"

    sput-object v0, Landroid/util/Log;->STR_WARN:Ljava/lang/String;

    .line 140
    const-string v0, "E:"

    sput-object v0, Landroid/util/Log;->STR_ERROR:Ljava/lang/String;

    .line 141
    const-string v0, "A:"

    sput-object v0, Landroid/util/Log;->STR_ASSERT:Ljava/lang/String;

    .line 185
    new-instance v0, Landroid/util/Log$2;

    invoke-direct {v0}, Landroid/util/Log$2;-><init>()V

    sput-object v0, Landroid/util/Log;->_inCheckin:Ljava/lang/ThreadLocal;

    .line 190
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Landroid/util/Log;->UNLOCKED:Ljava/lang/Integer;

    .line 191
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Landroid/util/Log;->LOCKED:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 10
    .parameter "tag"

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x0

    .line 155
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/util/Log;->_checkin:Landroid/os/ICheckinService;

    .line 134
    iput-boolean v8, p0, Landroid/util/Log;->_logToCheckin:Z

    .line 157
    :try_start_0
    sput-object p1, Landroid/util/Log;->_tag:Ljava/lang/String;

    .line 159
    const-string v2, "checkin_mot"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ICheckinService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICheckinService;

    move-result-object v2

    iput-object v2, p0, Landroid/util/Log;->_checkin:Landroid/os/ICheckinService;

    .line 160
    iget-object v2, p0, Landroid/util/Log;->_checkin:Landroid/os/ICheckinService;

    if-nez v2, :cond_0

    .line 161
    const/4 v2, 0x0

    const/4 v3, 0x6

    const-string/jumbo v4, "util.Log"

    const-string v5, "logging to checkin skipped - no checkin service"

    invoke-static {v2, v3, v4, v5}, Landroid/util/Log;->println_native_inner(IILjava/lang/String;Ljava/lang/String;)I

    .line 183
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v2, p0, Landroid/util/Log;->_checkin:Landroid/os/ICheckinService;

    invoke-interface {v2, p1}, Landroid/os/ICheckinService;->canLog(Ljava/lang/String;)Z

    move-result v0

    .line 167
    .local v0, canLog:Z
    if-nez v0, :cond_1

    .line 168
    const/4 v2, 0x0

    const/4 v3, 0x4

    const-string/jumbo v4, "util.Log"

    const-string v5, "logging to checkin skipped - tag(%s) is black-listed"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Landroid/util/Log;->println_native_inner(IILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 178
    .end local v0           #canLog:Z
    :catch_0
    move-exception v1

    .line 180
    .local v1, e:Ljava/lang/Exception;
    const-string/jumbo v2, "util.Log"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to find or bind checkin service\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v9, v2, v3}, Landroid/util/Log;->println_native_inner(IILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 174
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #canLog:Z
    :cond_1
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Landroid/util/Log;->_logToCheckin:Z

    .line 175
    iget-object v2, p0, Landroid/util/Log;->_checkin:Landroid/os/ICheckinService;

    invoke-interface {v2}, Landroid/os/ICheckinService;->getLogLevel()I

    move-result v2

    sput v2, Landroid/util/Log;->_logLevel:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 313
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v0, v1, p0, p1}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 4
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 324
    const/4 v0, 0x0

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 406
    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {v0, v1, p0, p1}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 4
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 417
    const/4 v0, 0x0

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getCheckinLevel()I
    .locals 1

    .prologue
    .line 255
    sget v0, Landroid/util/Log;->_logLevel:I

    return v0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4
    .parameter "tr"

    .prologue
    .line 478
    if-nez p0, :cond_0

    .line 479
    const-string v3, ""

    .line 495
    :goto_0
    return-object v3

    .line 484
    :cond_0
    move-object v2, p0

    .line 485
    .local v2, t:Ljava/lang/Throwable;
    :goto_1
    if-eqz v2, :cond_2

    .line 486
    instance-of v3, v2, Ljava/net/UnknownHostException;

    if-eqz v3, :cond_1

    .line 487
    const-string v3, ""

    goto :goto_0

    .line 489
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_1

    .line 492
    :cond_2
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 493
    .local v1, sw:Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 494
    .local v0, pw:Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 495
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    sget-object v0, Landroid/util/Log;->_tag:Ljava/lang/String;

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 334
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {v0, v1, p0, p1}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 4
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 345
    const/4 v0, 0x0

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static native isLoggable(Ljava/lang/String;I)Z
.end method

.method private static levelToStr(I)Ljava/lang/String;
    .locals 2
    .parameter "l"

    .prologue
    .line 144
    packed-switch p0, :pswitch_data_0

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 145
    :pswitch_0
    sget-object v0, Landroid/util/Log;->STR_VERBOSE:Ljava/lang/String;

    goto :goto_0

    .line 146
    :pswitch_1
    sget-object v0, Landroid/util/Log;->STR_DEBUG:Ljava/lang/String;

    goto :goto_0

    .line 147
    :pswitch_2
    sget-object v0, Landroid/util/Log;->STR_INFO:Ljava/lang/String;

    goto :goto_0

    .line 148
    :pswitch_3
    sget-object v0, Landroid/util/Log;->STR_WARN:Ljava/lang/String;

    goto :goto_0

    .line 149
    :pswitch_4
    sget-object v0, Landroid/util/Log;->STR_ERROR:Ljava/lang/String;

    goto :goto_0

    .line 150
    :pswitch_5
    sget-object v0, Landroid/util/Log;->STR_ASSERT:Ljava/lang/String;

    goto :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static logCheckin(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "level"
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 211
    sget-object v1, Landroid/util/Log;->_instance:Landroid/util/Log;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/util/Log;->_instance:Landroid/util/Log;

    iget-boolean v1, v1, Landroid/util/Log;->_logToCheckin:Z

    if-nez v1, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    sget-object v1, Landroid/util/Log;->_instance:Landroid/util/Log;

    sget-object v1, Landroid/util/Log;->_inCheckin:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Landroid/util/Log;->UNLOCKED:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 217
    :try_start_0
    sget-object v1, Landroid/util/Log;->_instance:Landroid/util/Log;

    iget-object v1, v1, Landroid/util/Log;->_checkin:Landroid/os/ICheckinService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/util/Log;->levelToStr(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p0, p1, v2}, Landroid/os/ICheckinService;->log(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    sget-object v1, Landroid/util/Log;->_instance:Landroid/util/Log;

    sget-object v1, Landroid/util/Log;->_inCheckin:Ljava/lang/ThreadLocal;

    sget-object v2, Landroid/util/Log;->UNLOCKED:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    const/4 v2, 0x6

    :try_start_1
    const-string/jumbo v3, "util.Log"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "logging to checkin failed\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Landroid/util/Log;->println_native_inner(IILjava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    sget-object v1, Landroid/util/Log;->_instance:Landroid/util/Log;

    sget-object v1, Landroid/util/Log;->_inCheckin:Ljava/lang/ThreadLocal;

    sget-object v2, Landroid/util/Log;->UNLOCKED:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    sget-object v2, Landroid/util/Log;->_instance:Landroid/util/Log;

    sget-object v2, Landroid/util/Log;->_inCheckin:Ljava/lang/ThreadLocal;

    sget-object v3, Landroid/util/Log;->UNLOCKED:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v1
.end method

.method public static println(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "priority"
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 507
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static println_native(IILjava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "bufID"
    .parameter "priority"
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 276
    :try_start_0
    sget v1, Landroid/util/Log;->_logLevel:I

    if-gt v1, p1, :cond_0

    invoke-static {p1, p2, p3}, Landroid/util/Log;->logCheckin(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :cond_0
    :goto_0
    invoke-static {p0, p1, p2, p3}, Landroid/util/Log;->println_native_inner(IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    const/4 v2, 0x4

    const-string/jumbo v3, "util.Log"

    const-string v4, "println_native_wrapped exception"

    invoke-static {v1, v2, v3, v4}, Landroid/util/Log;->println_native_inner(IILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static native println_native_inner(IILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static registerTag(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 240
    sget-object v0, Landroid/util/Log;->_instance:Landroid/util/Log;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/Log;

    invoke-direct {v0, p0}, Landroid/util/Log;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/util/Log;->_instance:Landroid/util/Log;

    .line 241
    :cond_0
    return-void
.end method

.method public static setWtfHandler(Landroid/util/Log$TerribleFailureHandler;)Landroid/util/Log$TerribleFailureHandler;
    .locals 3
    .parameter "handler"

    .prologue
    .line 465
    if-nez p0, :cond_0

    .line 466
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "handler == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 468
    :cond_0
    sget-object v0, Landroid/util/Log;->sWtfHandler:Landroid/util/Log$TerribleFailureHandler;

    .line 469
    .local v0, oldHandler:Landroid/util/Log$TerribleFailureHandler;
    sput-object p0, Landroid/util/Log;->sWtfHandler:Landroid/util/Log$TerribleFailureHandler;

    .line 470
    return-object v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 292
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, v1, p0, p1}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 4
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 303
    const/4 v0, 0x0

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 355
    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-static {v0, v1, p0, p1}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 4
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 366
    const/4 v0, 0x0

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3
    .parameter "tag"
    .parameter "tr"

    .prologue
    .line 396
    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 430
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 6
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 451
    new-instance v1, Landroid/util/Log$TerribleFailure;

    invoke-direct {v1, p1, p2}, Landroid/util/Log$TerribleFailure;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 452
    .local v1, what:Landroid/util/Log$TerribleFailure;
    const/4 v2, 0x0

    const/4 v3, 0x7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, p0, v4}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 453
    .local v0, bytes:I
    sget-object v2, Landroid/util/Log;->sWtfHandler:Landroid/util/Log$TerribleFailureHandler;

    invoke-interface {v2, p0, v1}, Landroid/util/Log$TerribleFailureHandler;->onTerribleFailure(Ljava/lang/String;Landroid/util/Log$TerribleFailure;)V

    .line 454
    return v0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "tag"
    .parameter "tr"

    .prologue
    .line 440
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

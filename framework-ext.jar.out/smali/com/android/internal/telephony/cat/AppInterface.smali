.class public interface abstract Lcom/android/internal/telephony/cat/AppInterface;
.super Ljava/lang/Object;
.source "AppInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    }
.end annotation


# static fields
.field public static final CAT_CMD_ACTION:Ljava/lang/String; = "android.intent.action.stk.command"

.field public static final CAT_SESSION_END_ACTION:Ljava/lang/String; = "android.intent.action.stk.session_end"

.field public static final PROPERTY_STK_USERACTIVITY:Ljava/lang/String; = "gsm.stk.event.useractivity"

.field public static final STK_BROWSER_TERMINATE_ACTION:Ljava/lang/String; = "android.intent.action.stk.browser_terminate"

.field public static final STK_BUSY_SCREEN_ACTION:Ljava/lang/String; = "android.intent.action.stk.busy_screen"

.field public static final STK_IDLE_SCREEN_ACTION:Ljava/lang/String; = "android.intent.action.stk.idle_screen"

.field public static final STK_REQUEST_IDLE_SCREEN_STATUS_ACTION:Ljava/lang/String; = "android.intent.action.stk.req_idle_screen_status"

.field public static final STK_USER_ACTIVITY:Ljava/lang/String; = "android.intent.action.stk.user_activity"


# virtual methods
.method public abstract onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
.end method

.method public abstract setIdleScreenMode(Z)V
.end method

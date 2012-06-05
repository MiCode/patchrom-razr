.class public Lcom/motorola/internal/widget/LockPinUtils;
.super Lcom/android/internal/widget/LockPatternUtils;
.source "LockPinUtils.java"


# static fields
.field private static final DEBUG:Z = true

.field public static final FALLBACK_LOCK_TIMER_MAX_VALUE:I = 0x124f80

.field public static FALLBACK_LOCK_TIMER_VALUE:I = 0x0

.field public static final LOCK_PATTERN:I = 0x1

.field public static final LOCK_TIMER_WHEN_DISPLAY_OFF_VALUE:I = -0x1

.field public static final NO_LOCK:I = 0x0

.field public static final SCREEN_OFF_NEVER_TIMEOUT_VALUE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "LockPinUtils"


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const v0, 0x124f80

    sput v0, Lcom/motorola/internal/widget/LockPinUtils;->FALLBACK_LOCK_TIMER_VALUE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/internal/widget/LockPinUtils;->mContentResolver:Landroid/content/ContentResolver;

    .line 92
    return-void
.end method


# virtual methods
.method public setPatternEnabled(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 99
    iget-object v3, p0, Lcom/motorola/internal/widget/LockPinUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "lock_pattern_autolock"

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 103
    iget-object v0, p0, Lcom/motorola/internal/widget/LockPinUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "lock_type"

    if-eqz p1, :cond_1

    :goto_1
    invoke-static {v0, v3, v1}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 107
    return-void

    :cond_0
    move v0, v2

    .line 99
    goto :goto_0

    :cond_1
    move v1, v2

    .line 103
    goto :goto_1
.end method

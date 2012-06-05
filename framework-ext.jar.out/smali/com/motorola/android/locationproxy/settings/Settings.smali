.class public final Lcom/motorola/android/locationproxy/settings/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/locationproxy/settings/Settings$Supl;,
        Lcom/motorola/android/locationproxy/settings/Settings$SettingNotFoundException;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.motorola.android.providers.settings"

.field private static final TAG:Ljava/lang/String; = "LocationProxySettings"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

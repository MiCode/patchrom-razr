.class public final Landroid/provider/Telephony$Intents;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation


# static fields
.field public static final EXTRA_CDMA_SIGNAL_BAR:Ljava/lang/String; = "cdmaSignalBar"

.field public static final EXTRA_EVDO_SIGNAL_BAR:Ljava/lang/String; = "evdoSignalBar"

.field public static final EXTRA_GSM_SIGNAL_BAR:Ljava/lang/String; = "gsmSignalBar"

.field public static final EXTRA_LTE_SIGNAL_BAR:Ljava/lang/String; = "lteSignalBar"

.field public static final EXTRA_PLMN:Ljava/lang/String; = "plmn"

.field public static final EXTRA_SHOW_PLMN:Ljava/lang/String; = "showPlmn"

.field public static final EXTRA_SHOW_SPN:Ljava/lang/String; = "showSpn"

.field public static final EXTRA_SPN:Ljava/lang/String; = "spn"

.field public static final EXTRA_UMTS_SIGNAL_BAR:Ljava/lang/String; = "umtsSignalBar"

.field public static final SECRET_CODE_ACTION:Ljava/lang/String; = "android.provider.Telephony.SECRET_CODE"

.field public static final SIGNAL_BAR_UPDATED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SIGNAL_BAR_UPDATED"

.field public static final SPN_STRINGS_UPDATED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SPN_STRINGS_UPDATED"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2372
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2374
    return-void
.end method

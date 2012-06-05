.class public final Lcom/motorola/android/provider/MediaStoreExt$Images;
.super Ljava/lang/Object;
.source "MediaStoreExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/provider/MediaStoreExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Images"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/provider/MediaStoreExt$Images$MultishotsInfo;,
        Lcom/motorola/android/provider/MediaStoreExt$Images$Multishots;,
        Lcom/motorola/android/provider/MediaStoreExt$Images$MultishotsColumns;,
        Lcom/motorola/android/provider/MediaStoreExt$Images$ImageRemoveLoc;,
        Lcom/motorola/android/provider/MediaStoreExt$Images$SpeedData;,
        Lcom/motorola/android/provider/MediaStoreExt$Images$Thumbnails;,
        Lcom/motorola/android/provider/MediaStoreExt$Images$ImageColumns;
    }
.end annotation


# static fields
.field public static final SHOOTING_MODE_MULTIBURST:I = 0x1

.field public static final SHOOTING_MODE_MULTIBURST_MAIN:I = 0x2

.field public static final SHOOTING_MODE_NORMAL:I = 0x0

.field public static final SHOOTING_MODE_PANORAMA:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 316
    return-void
.end method

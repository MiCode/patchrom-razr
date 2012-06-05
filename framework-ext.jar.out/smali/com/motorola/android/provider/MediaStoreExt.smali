.class public final Lcom/motorola/android/provider/MediaStoreExt;
.super Ljava/lang/Object;
.source "MediaStoreExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/provider/MediaStoreExt$TagInfoVisual;,
        Lcom/motorola/android/provider/MediaStoreExt$Visual;,
        Lcom/motorola/android/provider/MediaStoreExt$VisualColumns;,
        Lcom/motorola/android/provider/MediaStoreExt$TagInfoVideo;,
        Lcom/motorola/android/provider/MediaStoreExt$TagInfoVideoColumns;,
        Lcom/motorola/android/provider/MediaStoreExt$TagInfoImage;,
        Lcom/motorola/android/provider/MediaStoreExt$TagInfoImageColumns;,
        Lcom/motorola/android/provider/MediaStoreExt$Tag;,
        Lcom/motorola/android/provider/MediaStoreExt$TagColumns;,
        Lcom/motorola/android/provider/MediaStoreExt$Association;,
        Lcom/motorola/android/provider/MediaStoreExt$AssociationColumns;,
        Lcom/motorola/android/provider/MediaStoreExt$Video;,
        Lcom/motorola/android/provider/MediaStoreExt$Audio;,
        Lcom/motorola/android/provider/MediaStoreExt$Images;,
        Lcom/motorola/android/provider/MediaStoreExt$MediaColumns;
    }
.end annotation


# static fields
.field public static AUTHORITY:Ljava/lang/String; = null

.field private static final CONTENT_AUTHORITY_SLASH:Ljava/lang/String; = "content://media/"

.field private static final CONTENT_EXTENSION_AUTHORITY_SLASH:Ljava/lang/String; = null

.field public static final DRM_TYPE_COMBINED_DELIVERY:I = 0x2

.field public static final DRM_TYPE_FORWARD_LOCK:I = 0x1

.field public static final DRM_TYPE_MAX_VALUE:I = 0x4

.field public static final DRM_TYPE_MIN_VALUE:I = 0x0

.field public static final DRM_TYPE_NO_DRM:I = 0x0

.field public static final DRM_TYPE_SEPARATE_DELIVERY:I = 0x3

.field public static final DRM_TYPE_SEPARATE_DELIVERY_FL:I = 0x4

.field private static final TAG:Ljava/lang/String; = "MediaStoreExt"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    const-string v0, "com.motorola.providers.mediaext"

    sput-object v0, Lcom/motorola/android/provider/MediaStoreExt;->AUTHORITY:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/motorola/android/provider/MediaStoreExt;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/provider/MediaStoreExt;->CONTENT_EXTENSION_AUTHORITY_SLASH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 853
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/motorola/android/provider/MediaStoreExt;->CONTENT_EXTENSION_AUTHORITY_SLASH:Ljava/lang/String;

    return-object v0
.end method

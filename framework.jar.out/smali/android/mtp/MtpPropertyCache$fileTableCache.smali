.class Landroid/mtp/MtpPropertyCache$fileTableCache;
.super Ljava/lang/Object;
.source "MtpPropertyCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpPropertyCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "fileTableCache"
.end annotation


# instance fields
.field mFormat:I

.field mParent:I

.field mPosition:I

.field mSize:J

.field final synthetic this$0:Landroid/mtp/MtpPropertyCache;


# direct methods
.method constructor <init>(Landroid/mtp/MtpPropertyCache;IJII)V
    .locals 0
    .parameter
    .parameter "format"
    .parameter "size"
    .parameter "parent"
    .parameter "pos"

    .prologue
    .line 63
    iput-object p1, p0, Landroid/mtp/MtpPropertyCache$fileTableCache;->this$0:Landroid/mtp/MtpPropertyCache;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p2, p0, Landroid/mtp/MtpPropertyCache$fileTableCache;->mFormat:I

    .line 65
    iput-wide p3, p0, Landroid/mtp/MtpPropertyCache$fileTableCache;->mSize:J

    .line 66
    iput p6, p0, Landroid/mtp/MtpPropertyCache$fileTableCache;->mPosition:I

    .line 67
    iput p5, p0, Landroid/mtp/MtpPropertyCache$fileTableCache;->mParent:I

    .line 68
    return-void
.end method

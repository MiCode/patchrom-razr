.class public Lcom/motorola/Camera/CameraRoll$CameraData;
.super Ljava/lang/Object;
.source "CameraRoll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/CameraRoll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraData"
.end annotation


# instance fields
.field public _id:J

.field public dataType:I

.field public dateTaken:J

.field public fileName:Ljava/lang/String;

.field public orientation:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 497
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 509
    instance-of v0, p1, Lcom/motorola/Camera/CameraRoll$CameraData;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/motorola/Camera/CameraRoll$CameraData;->fileName:Ljava/lang/String;

    check-cast p1, Lcom/motorola/Camera/CameraRoll$CameraData;

    .end local p1
    iget-object v1, p1, Lcom/motorola/Camera/CameraRoll$CameraData;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 512
    :goto_0
    return v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/motorola/Camera/CameraRoll$CameraData;->fileName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/motorola/Camera/CameraRoll$CameraData;->fileName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 520
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

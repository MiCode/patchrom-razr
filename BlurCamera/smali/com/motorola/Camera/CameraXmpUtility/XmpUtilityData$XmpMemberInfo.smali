.class public Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;
.super Ljava/lang/Object;
.source "XmpUtilityData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "XmpMemberInfo"
.end annotation


# instance fields
.field public mAXmpData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpData;",
            ">;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;

.field public mMediaID:Ljava/lang/Integer;

.field public mMessage:I

.field public mNotifyScanner:Z

.field public mSchemaRegistered:Z

.field public mUri:Landroid/net/Uri;

.field public mValueInteger:I

.field public mValueString:Ljava/lang/String;

.field public mValueType:I

.field public mXmpUtilityMode:I

.field public mXmptag:Ljava/lang/String;

.field final synthetic this$0:Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData;


# direct methods
.method public constructor <init>(Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->this$0:Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mNotifyScanner:Z

    return-void
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;

    .line 73
    .local v0, clone:Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;
    iget-object v3, p0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mAXmpData:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 74
    iget-object v3, p0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mAXmpData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mAXmpData:Ljava/util/ArrayList;

    .line 76
    iget-object v3, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mAXmpData:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 77
    iget-object v3, p0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mAXmpData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpData;

    .line 78
    .local v2, xmpdata:Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpData;
    iget-object v4, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mAXmpData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpData;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpData;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 82
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #xmpdata:Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpData;
    :cond_0
    return-object v0
.end method

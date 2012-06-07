.class public Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpData;
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
    name = "XmpData"
.end annotation


# instance fields
.field public mValueInteger:I

.field public mValueString:Ljava/lang/String;

.field public mValueType:I

.field public mXmptag:Ljava/lang/String;

.field final synthetic this$0:Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData;


# direct methods
.method public constructor <init>(Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpData;->this$0:Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpData;

    .line 108
    .local v0, clone:Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpData;
    return-object v0
.end method

.class public Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData;
.super Ljava/lang/Object;
.source "XmpUtilityData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpData;,
        Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;
    }
.end annotation


# static fields
.field public static final XMP_VALUE_TYPE_INTEGER:I = 0x0

.field public static final XMP_VALUE_TYPE_STRING:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method


# virtual methods
.method public createXmpData(Ljava/lang/String;I)Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpData;
    .locals 2
    .parameter "xmptag"
    .parameter "value"

    .prologue
    .line 122
    new-instance v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpData;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpData;-><init>(Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData;)V

    .line 124
    .local v0, mydata:Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpData;
    iput-object p1, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpData;->mXmptag:Ljava/lang/String;

    .line 125
    iput p2, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpData;->mValueInteger:I

    .line 126
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpData;->mValueString:Ljava/lang/String;

    .line 127
    const/4 v1, 0x0

    iput v1, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpData;->mValueType:I

    .line 129
    return-object v0
.end method

.method public createXmpData(Ljava/lang/String;Ljava/lang/String;)Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpData;
    .locals 2
    .parameter "xmptag"
    .parameter "value"

    .prologue
    .line 141
    new-instance v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpData;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpData;-><init>(Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData;)V

    .line 142
    .local v0, mydata:Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpData;
    iput-object p1, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpData;->mXmptag:Ljava/lang/String;

    .line 143
    const/4 v1, 0x0

    iput v1, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpData;->mValueInteger:I

    .line 144
    iput-object p2, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpData;->mValueString:Ljava/lang/String;

    .line 145
    const/4 v1, 0x1

    iput v1, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpData;->mValueType:I

    .line 147
    return-object v0
.end method

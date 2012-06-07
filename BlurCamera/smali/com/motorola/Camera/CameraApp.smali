.class public Lcom/motorola/Camera/CameraApp;
.super Landroid/app/Application;
.source "CameraApp.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CameraApp"

.field private static mStoreImageUtility:Lcom/motorola/Camera/StoreImageUtility;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/Camera/CameraApp;->mStoreImageUtility:Lcom/motorola/Camera/StoreImageUtility;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public getStoreImageUtility(Landroid/content/Context;Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/StoreImageUtility;
    .locals 1
    .parameter "context"
    .parameter "camera"

    .prologue
    .line 74
    sget-object v0, Lcom/motorola/Camera/CameraApp;->mStoreImageUtility:Lcom/motorola/Camera/StoreImageUtility;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 76
    new-instance v0, Lcom/motorola/Camera/StoreImageUtility;

    invoke-direct {v0, p1, p2, p0}, Lcom/motorola/Camera/StoreImageUtility;-><init>(Landroid/content/Context;Lcom/motorola/Camera/Camera;Landroid/content/Context;)V

    sput-object v0, Lcom/motorola/Camera/CameraApp;->mStoreImageUtility:Lcom/motorola/Camera/StoreImageUtility;

    .line 86
    :cond_0
    :goto_0
    sget-object v0, Lcom/motorola/Camera/CameraApp;->mStoreImageUtility:Lcom/motorola/Camera/StoreImageUtility;

    return-object v0

    .line 80
    :cond_1
    sget-object v0, Lcom/motorola/Camera/CameraApp;->mStoreImageUtility:Lcom/motorola/Camera/StoreImageUtility;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 84
    sget-object v0, Lcom/motorola/Camera/CameraApp;->mStoreImageUtility:Lcom/motorola/Camera/StoreImageUtility;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/Camera/StoreImageUtility;->updateReferences(Landroid/content/Context;Lcom/motorola/Camera/Camera;)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 57
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/motorola/Camera/CameraApp;->mStoreImageUtility:Lcom/motorola/Camera/StoreImageUtility;

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Lcom/motorola/Camera/CameraApp;->mStoreImageUtility:Lcom/motorola/Camera/StoreImageUtility;

    invoke-virtual {v0}, Lcom/motorola/Camera/StoreImageUtility;->shutdown()V

    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/Camera/CameraApp;->mStoreImageUtility:Lcom/motorola/Camera/StoreImageUtility;

    .line 51
    :cond_0
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 52
    return-void
.end method

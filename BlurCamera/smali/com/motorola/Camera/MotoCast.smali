.class public Lcom/motorola/Camera/MotoCast;
.super Ljava/lang/Object;
.source "MotoCast.java"


# static fields
.field private static final ACTION_AUTO_UPLOAD:Ljava/lang/String; = "Zumo_Setting_Action_Auto"

.field private static final MOTOCONNECT_PACKAGE:Ljava/lang/String; = "com.motorola.motoconnect"

.field private static final MOTOCONNECT_PREF_ACTIVITY:Ljava/lang/String; = "com.motorola.motoconnect.activities.MCPreferencesActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isVersion1Available(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 54
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 55
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.motorola.motoconnect"

    const-string v3, "com.motorola.motoconnect.activities.MCPreferencesActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 57
    .local v0, available:Z
    :goto_0
    return v0

    .line 56
    .end local v0           #available:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVersion2Available(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 61
    new-instance v1, Landroid/content/Intent;

    const-string v2, "Zumo_Setting_Action_Auto"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 63
    .local v0, available:Z
    :goto_0
    return v0

    .line 62
    .end local v0           #available:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isPackageAvailable(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/motorola/Camera/MotoCast;->isVersion2Available(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/motorola/Camera/MotoCast;->isVersion1Available(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launchAutoUpload(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/motorola/Camera/MotoCast;->isVersion2Available(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    new-instance v0, Landroid/content/Intent;

    const-string v1, "Zumo_Setting_Action_Auto"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 51
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    invoke-direct {p0, p1}, Lcom/motorola/Camera/MotoCast;->isVersion1Available(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 48
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "com.motorola.motoconnect"

    const-string v2, "com.motorola.motoconnect.activities.MCPreferencesActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

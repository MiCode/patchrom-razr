.class Lcom/motorola/Camera/DialogSettingsView$8;
.super Ljava/lang/Object;
.source "DialogSettingsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/DialogSettingsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/Camera/DialogSettingsView;


# direct methods
.method constructor <init>(Lcom/motorola/Camera/DialogSettingsView;)V
    .locals 0
    .parameter

    .prologue
    .line 1318
    iput-object p1, p0, Lcom/motorola/Camera/DialogSettingsView$8;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 1321
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1322
    .local v1, locationSettingIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/motorola/Camera/DialogSettingsView$8;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mGeoTagRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v2}, Lcom/motorola/Camera/DialogSettingsView;->access$1200(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/RotateDialogController;->dismissDialog()V

    .line 1323
    iget-object v2, p0, Lcom/motorola/Camera/DialogSettingsView$8;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v2, v2, Lcom/motorola/Camera/DialogSettingsView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    invoke-interface {v2}, Lcom/motorola/Camera/DialogCallbackInterface;->notifySettingSecondaryClosed()V

    .line 1324
    iget-object v2, p0, Lcom/motorola/Camera/DialogSettingsView$8;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v2, v2, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1325
    iget-object v2, p0, Lcom/motorola/Camera/DialogSettingsView$8;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v2, v2, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1326
    iget-object v2, p0, Lcom/motorola/Camera/DialogSettingsView$8;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/DialogSettingsView;->access$000(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setLocationOn(Ljava/lang/Boolean;)V

    .line 1327
    iget-object v2, p0, Lcom/motorola/Camera/DialogSettingsView$8;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mPreferencesCommon:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/motorola/Camera/DialogSettingsView;->access$200(Lcom/motorola/Camera/DialogSettingsView;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1328
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "isLocationOn"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1329
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1330
    return-void
.end method

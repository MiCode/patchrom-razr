.class Landroid/accounts/AccountManagerService$SimWatcher;
.super Landroid/content/BroadcastReceiver;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimWatcher"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field final synthetic this$0:Landroid/accounts/AccountManagerService;


# direct methods
.method public constructor <init>(Landroid/accounts/AccountManagerService;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter "context"

    .prologue
    .line 1867
    iput-object p1, p0, Landroid/accounts/AccountManagerService$SimWatcher;->this$0:Landroid/accounts/AccountManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1855
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/accounts/AccountManagerService$SimWatcher;->mContext:Landroid/content/Context;

    .line 1857
    new-instance v2, Landroid/accounts/AccountManagerService$SimWatcher$1;

    invoke-direct {v2, p0}, Landroid/accounts/AccountManagerService$SimWatcher$1;-><init>(Landroid/accounts/AccountManagerService$SimWatcher;)V

    iput-object v2, p0, Landroid/accounts/AccountManagerService$SimWatcher;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1871
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1872
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1873
    const-string v2, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1874
    invoke-virtual {p2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1875
    const-string v2, "phone"

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1877
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 1878
    const-string v2, "AccountManagerService"

    const-string v3, "register LISTEN_OTASP_CHANGED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    iget-object v2, p0, Landroid/accounts/AccountManagerService$SimWatcher;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x200

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1882
    :cond_0
    iput-object p2, p0, Landroid/accounts/AccountManagerService$SimWatcher;->mContext:Landroid/content/Context;

    .line 1883
    return-void
.end method

.method static synthetic access$1100(Landroid/accounts/AccountManagerService$SimWatcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1851
    invoke-direct {p0}, Landroid/accounts/AccountManagerService$SimWatcher;->simStateChanged()V

    return-void
.end method

.method private simStateChanged()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    .line 1893
    iget-object v10, p0, Landroid/accounts/AccountManagerService$SimWatcher;->mContext:Landroid/content/Context;

    const-string v11, "phone"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 1895
    .local v9, telephonyManager:Landroid/telephony/TelephonyManager;
    if-nez v9, :cond_1

    .line 1896
    const-string v10, "AccountManagerService"

    const-string v11, "failed to get TelephonyManager"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    :cond_0
    :goto_0
    return-void

    .line 1899
    :cond_1
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 1901
    .local v2, imsi:Ljava/lang/String;
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v5

    .line 1902
    .local v5, sn:Ljava/lang/String;
    const-string v10, "AccountManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "current SIM serial number ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1912
    iget-object v10, p0, Landroid/accounts/AccountManagerService$SimWatcher;->this$0:Landroid/accounts/AccountManagerService;

    const-string v11, "imsi"

    #calls: Landroid/accounts/AccountManagerService;->getMetaValue(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v10, v11}, Landroid/accounts/AccountManagerService;->access$1200(Landroid/accounts/AccountManagerService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1914
    .local v6, storedImsi:Ljava/lang/String;
    iget-object v10, p0, Landroid/accounts/AccountManagerService$SimWatcher;->this$0:Landroid/accounts/AccountManagerService;

    const-string/jumbo v11, "sn"

    #calls: Landroid/accounts/AccountManagerService;->getMetaValue(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v10, v11}, Landroid/accounts/AccountManagerService;->access$1200(Landroid/accounts/AccountManagerService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1915
    .local v7, storedSn:Ljava/lang/String;
    const-string v10, "AccountManagerService"

    invoke-static {v10, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1916
    const-string v10, "AccountManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "current IMSI="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "; stored IMSI="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    const-string v10, "AccountManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "current SN="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "; stored SN="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    :cond_2
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1926
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v10

    if-ne v10, v13, :cond_5

    .line 1927
    const-string v10, "phone"

    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 1928
    .local v4, service:Landroid/os/IBinder;
    if-nez v4, :cond_3

    .line 1929
    const-string v10, "AccountManagerService"

    const-string v11, "call to checkService(TELEPHONY_SERVICE) failed"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1932
    :cond_3
    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v8

    .line 1933
    .local v8, telephony:Lcom/android/internal/telephony/ITelephony;
    if-nez v8, :cond_4

    .line 1934
    const-string v10, "AccountManagerService"

    const-string v11, "failed to get ITelephony interface"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1939
    :cond_4
    :try_start_0
    invoke-interface {v8}, Lcom/android/internal/telephony/ITelephony;->needsOtaServiceProvisioning()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1945
    .local v3, needsProvisioning:Z
    :goto_1
    if-eqz v3, :cond_5

    .line 1947
    const-string v10, "AccountManagerService"

    invoke-static {v10, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1948
    const-string v10, "AccountManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "current IMSI="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " (needs provisioning); stored IMSI="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1940
    .end local v3           #needsProvisioning:Z
    :catch_0
    move-exception v1

    .line 1941
    .local v1, e:Landroid/os/RemoteException;
    const-string v10, "AccountManagerService"

    const-string v11, "exception while checking provisioning"

    invoke-static {v10, v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1943
    const/4 v3, 0x1

    .restart local v3       #needsProvisioning:Z
    goto :goto_1

    .line 1961
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v3           #needsProvisioning:Z
    .end local v4           #service:Landroid/os/IBinder;
    .end local v8           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_5
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 1963
    const-string v10, "AccountManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "wiping all passwords and authtokens because IMSI and SN changed. (storedImsi="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", currentImsi="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", storedSn="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", currentSn="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    iget-object v10, p0, Landroid/accounts/AccountManagerService$SimWatcher;->this$0:Landroid/accounts/AccountManagerService;

    #getter for: Landroid/accounts/AccountManagerService;->mOpenHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {v10}, Landroid/accounts/AccountManagerService;->access$1300(Landroid/accounts/AccountManagerService;)Landroid/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v10

    invoke-virtual {v10}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1968
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1970
    :try_start_1
    const-string v10, "DELETE from authtokens"

    invoke-virtual {v0, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1974
    const-string v10, "UPDATE accounts SET password = \'\' WHERE type!=\'com.motorola.blur.service.bsutils.MOTHER_USER_CREDS_TYPE\' AND type!=\'com.motorola.blur.service.bsutils.motorola\'"

    invoke-virtual {v0, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1978
    iget-object v10, p0, Landroid/accounts/AccountManagerService$SimWatcher;->this$0:Landroid/accounts/AccountManagerService;

    #calls: Landroid/accounts/AccountManagerService;->sendAccountsChangedBroadcast()V
    invoke-static {v10}, Landroid/accounts/AccountManagerService;->access$1400(Landroid/accounts/AccountManagerService;)V

    .line 1979
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1981
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1984
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_6
    iget-object v10, p0, Landroid/accounts/AccountManagerService$SimWatcher;->this$0:Landroid/accounts/AccountManagerService;

    const-string v11, "imsi"

    #calls: Landroid/accounts/AccountManagerService;->setMetaValue(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v11, v2}, Landroid/accounts/AccountManagerService;->access$1500(Landroid/accounts/AccountManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 1987
    iget-object v10, p0, Landroid/accounts/AccountManagerService$SimWatcher;->this$0:Landroid/accounts/AccountManagerService;

    const-string/jumbo v11, "sn"

    #calls: Landroid/accounts/AccountManagerService;->setMetaValue(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v11, v5}, Landroid/accounts/AccountManagerService;->access$1500(Landroid/accounts/AccountManagerService;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1981
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v10

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v10
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1992
    invoke-direct {p0}, Landroid/accounts/AccountManagerService$SimWatcher;->simStateChanged()V

    .line 1993
    return-void
.end method

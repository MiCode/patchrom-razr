.class public final Lcom/motorola/bluetoothle/BluetoothGatt;
.super Ljava/lang/Object;
.source "BluetoothGatt.java"


# static fields
.field public static final ACTION_GATT_CHARACTERISTICS_GET:Ljava/lang/String; = "com.motorola.bluetoothle.bluetoothgatt.action.GATT_CHARACTERISTICS_GET"

.field public static final ACTION_GATT_CHARACTERISTICS_READ:Ljava/lang/String; = "com.motorola.bluetoothle.bluetoothgatt.action.GATT_CHARACTERISTICS_READ"

.field public static final ACTION_GATT_CHARACTERISTICS_WRITE:Ljava/lang/String; = "com.motorola.bluetoothle.bluetoothgatt.action.GATT_CHARACTERISTICS_WRITE"

.field public static final ACTION_GATT_CONNECTED:Ljava/lang/String; = "com.motorola.bluetoothle.bluetoothgatt.action.GATT_CONNECTED"

.field public static final ACTION_GATT_DISCONNECTED:Ljava/lang/String; = "com.motorola.bluetoothle.bluetoothgatt.action.GATT_DISCONNECTED"

.field public static final ACTION_GATT_STATE_CHANGED:Ljava/lang/String; = "com.motorola.bluetoothle.bluetoothgatt.action.GATT_STATE_CHANGED"

.field public static final ACTION_START_LE:Ljava/lang/String; = "com.motorola.bluetoothle.bluetoothgatt.action.START_LE"

.field public static final CONNECTION_EXISTS:I = 0x2

.field public static final CONNECT_COMPLETE:Ljava/lang/String; = "com.motorola.bluetoothle.bluetoothgatt.CONNECT_COMPLETE"

.field private static final DBG:Z = true

.field public static final DISCONNECT_COMPLETE:Ljava/lang/String; = "com.motorola.bluetoothle.bluetoothgatt.DISCONNECT_COMPLETE"

.field public static final EXTRA_CHARCATERISTICS_HANDLE:Ljava/lang/String; = "com.motorola.bluetoothle.bluetoothgatt.extra.CHARCATERISTICS_HANDLE"

.field public static final EXTRA_CHARCATERISTICS_UUIDS:Ljava/lang/String; = "com.motorola.bluetoothle.bluetoothgatt.extra.CHARCATERISTICS_UUIDS"

.field public static final EXTRA_CHARCATERISTIC_READ_VALUE:Ljava/lang/String; = "com.motorola.bluetoothle.bluetoothgatt.extra.CHARCATERISTIC_READ_VALUE"

.field public static final EXTRA_CHAR_HANDLE:Ljava/lang/String; = "com.motorola.bluetoothle.bluetoothgatt.extra.CHAR_HANDLE"

.field public static final EXTRA_CONNECT_RESULT:Ljava/lang/String; = "com.motorola.bluetoothle.bluetoothgatt.extra.CONNECT_RESULT"

.field public static final EXTRA_DESCRIPTOR_CONFIGURATION:Ljava/lang/String; = "com.motorola.bluetoothle.bluetoothgatt.extra.DESCRIPTOR_HANDLE"

.field public static final EXTRA_GATT_STATE:Ljava/lang/String; = "com.motorola.bluetoothle.bluetoothgatt.extra.GATT_STATE"

.field public static final EXTRA_PRIMARY_UUID:Ljava/lang/String; = "com.motorola.bluetoothle.bluetoothgatt.extra.PRIMARY_UUID"

.field public static final EXTRA_WRITE_STATUS:Ljava/lang/String; = "com.motorola.bluetoothle.bluetoothgatt.extra.WRITE_STATUS"

.field public static final FAILURE:I = 0x3

.field public static final FORBIDDEN:I = 0x5

.field public static final GET_COMPLETE:Ljava/lang/String; = "com.motorola.bluetoothle.bluetoothgatt.GET_COMPLETE"

.field public static final INVALID_OPERATION:I = 0x4

.field public static final OPERATION_DISABLE_INDICATION:I = 0x6

.field public static final OPERATION_DISABLE_NOTIFICATION:I = 0x7

.field public static final OPERATION_ENABLE_INDICATION:I = 0x4

.field public static final OPERATION_ENABLE_NOTIFICATION:I = 0x5

.field public static final OPERATION_READ_CHARACTERISTICS:I = 0x1

.field public static final OPERATION_READ_PRIMARY_SERVICES:I = 0x0

.field public static final OPERATION_READ_SENSOR_LOCATION:I = 0x3

.field public static final OPERATION_RESET_ENERGY_EXPENDED:I = 0x2

.field public static final PENDING:I = 0x1

.field public static final SERVICE_UNAVAILABLE:I = 0x6

.field public static final SET_COMPLETE:Ljava/lang/String; = "com.motorola.bluetoothle.bluetoothgatt.SET_COMPLETE"

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_DISCONNECTING:I = 0x3

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BluetoothGatt"

.field public static final UNKNOWN_ERROR:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

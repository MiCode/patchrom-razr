.class public Lcom/motorola/android/telephony/ISIMAuthRes;
.super Ljava/lang/Object;
.source "ISIMAuthRes.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/android/telephony/ISIMAuthRes;",
            ">;"
        }
    .end annotation
.end field

.field static final LOG_TAG:Ljava/lang/String; = "ISIM"


# instance fields
.field public auts:[B

.field public auts_length:I

.field public ck:[B

.field public ck_length:I

.field public ik:[B

.field public ik_length:I

.field public res:[B

.field public res_length:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/motorola/android/telephony/ISIMAuthRes$1;

    invoke-direct {v0}, Lcom/motorola/android/telephony/ISIMAuthRes$1;-><init>()V

    sput-object v0, Lcom/motorola/android/telephony/ISIMAuthRes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[BI[BI[BI[B)V
    .locals 1
    .parameter "res_length"
    .parameter "res"
    .parameter "ik_length"
    .parameter "ik"
    .parameter "ck_length"
    .parameter "ck"
    .parameter "auts_length"
    .parameter "auts"

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v0, p0, Lcom/motorola/android/telephony/ISIMAuthRes;->res_length:I

    .line 34
    iput v0, p0, Lcom/motorola/android/telephony/ISIMAuthRes;->ik_length:I

    .line 36
    iput v0, p0, Lcom/motorola/android/telephony/ISIMAuthRes;->ck_length:I

    .line 38
    iput v0, p0, Lcom/motorola/android/telephony/ISIMAuthRes;->auts_length:I

    .line 74
    iput p1, p0, Lcom/motorola/android/telephony/ISIMAuthRes;->res_length:I

    .line 75
    iput-object p2, p0, Lcom/motorola/android/telephony/ISIMAuthRes;->res:[B

    .line 76
    iput p3, p0, Lcom/motorola/android/telephony/ISIMAuthRes;->ik_length:I

    .line 77
    iput-object p4, p0, Lcom/motorola/android/telephony/ISIMAuthRes;->ik:[B

    .line 78
    iput p5, p0, Lcom/motorola/android/telephony/ISIMAuthRes;->ck_length:I

    .line 79
    iput-object p6, p0, Lcom/motorola/android/telephony/ISIMAuthRes;->ck:[B

    .line 80
    iput p7, p0, Lcom/motorola/android/telephony/ISIMAuthRes;->auts_length:I

    .line 81
    iput-object p8, p0, Lcom/motorola/android/telephony/ISIMAuthRes;->auts:[B

    .line 82
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 91
    iget v0, p0, Lcom/motorola/android/telephony/ISIMAuthRes;->res_length:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget-object v0, p0, Lcom/motorola/android/telephony/ISIMAuthRes;->res:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 93
    iget v0, p0, Lcom/motorola/android/telephony/ISIMAuthRes;->ik_length:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget-object v0, p0, Lcom/motorola/android/telephony/ISIMAuthRes;->ik:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 95
    iget v0, p0, Lcom/motorola/android/telephony/ISIMAuthRes;->ck_length:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-object v0, p0, Lcom/motorola/android/telephony/ISIMAuthRes;->ck:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 97
    iget v0, p0, Lcom/motorola/android/telephony/ISIMAuthRes;->auts_length:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-object v0, p0, Lcom/motorola/android/telephony/ISIMAuthRes;->auts:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 99
    return-void
.end method

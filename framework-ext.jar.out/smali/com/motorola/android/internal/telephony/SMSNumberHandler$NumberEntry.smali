.class public Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;
.super Ljava/lang/Object;
.source "SMSNumberHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/SMSNumberHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NumberEntry"
.end annotation


# instance fields
.field public IDD:Ljava/lang/String;

.field public country_code:I

.field public number:Ljava/lang/String;

.field final synthetic this$0:Lcom/motorola/android/internal/telephony/SMSNumberHandler;


# direct methods
.method public constructor <init>(Lcom/motorola/android/internal/telephony/SMSNumberHandler;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "number"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;->this$0:Lcom/motorola/android/internal/telephony/SMSNumberHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p2, p0, Lcom/motorola/android/internal/telephony/SMSNumberHandler$NumberEntry;->number:Ljava/lang/String;

    .line 157
    return-void
.end method

.class public final Lcom/motorola/android/telephony/MCCEntry;
.super Ljava/lang/Object;
.source "MCCEntry.java"


# instance fields
.field public IDD:Ljava/lang/String;

.field public MCC:I

.field public MDNLength:I

.field public NDD:Ljava/lang/String;

.field public areaCode:Ljava/lang/String;

.field public countryCode:I

.field public countryName:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "MCC"
    .parameter "countryCode"
    .parameter "countryName"
    .parameter "NDD"
    .parameter "IDD"
    .parameter "areaCode"
    .parameter "MDNLength"

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/motorola/android/telephony/MCCEntry;->MCC:I

    .line 24
    iput p2, p0, Lcom/motorola/android/telephony/MCCEntry;->countryCode:I

    .line 25
    iput-object p3, p0, Lcom/motorola/android/telephony/MCCEntry;->countryName:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/motorola/android/telephony/MCCEntry;->NDD:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lcom/motorola/android/telephony/MCCEntry;->IDD:Ljava/lang/String;

    .line 28
    iput-object p6, p0, Lcom/motorola/android/telephony/MCCEntry;->areaCode:Ljava/lang/String;

    .line 29
    iput p7, p0, Lcom/motorola/android/telephony/MCCEntry;->MDNLength:I

    .line 31
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CdmaMCCEntry : { MCC = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/motorola/android/telephony/MCCEntry;->MCC:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CountryCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/motorola/android/telephony/MCCEntry;->countryCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "countryName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/telephony/MCCEntry;->countryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " NDD = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/telephony/MCCEntry;->NDD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "IDD = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/telephony/MCCEntry;->IDD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

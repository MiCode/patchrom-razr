.class public Lcom/motorola/Camera/CameraGlobalType$CamSize;
.super Ljava/lang/Object;
.source "CameraGlobalType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/CameraGlobalType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CamSize"
.end annotation


# instance fields
.field mDescription:Ljava/lang/String;

.field mHeight:I

.field mLock:Z

.field mSize:F

.field mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "str"

    .prologue
    const/4 v1, 0x0

    .line 644
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 638
    iput v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mWidth:I

    .line 639
    iput v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mHeight:I

    .line 640
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 641
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    .line 642
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mDescription:Ljava/lang/String;

    .line 645
    invoke-virtual {p0, p1}, Lcom/motorola/Camera/CameraGlobalType$CamSize;->update(Ljava/lang/String;)V

    .line 646
    return-void
.end method


# virtual methods
.method public getDescpiption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 805
    iget v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mHeight:I

    return v0
.end method

.method public getLock()Z
    .locals 1

    .prologue
    .line 815
    iget-boolean v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    return v0
.end method

.method public getSize()F
    .locals 1

    .prologue
    .line 808
    iget v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 802
    iget v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mWidth:I

    return v0
.end method

.method public update(II)V
    .locals 6
    .parameter "w"
    .parameter "h"

    .prologue
    const/high16 v5, 0x4100

    const/high16 v4, 0x40a0

    const/16 v3, 0x2d0

    const/high16 v2, 0x3f40

    const/4 v1, 0x0

    .line 731
    iput p1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mWidth:I

    .line 732
    iput p2, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mHeight:I

    .line 734
    const/16 v0, 0xcc0

    if-ne p1, v0, :cond_0

    const/16 v0, 0x720

    if-ne p2, v0, :cond_0

    .line 736
    const-string v0, "EightMPW"

    iput-object v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mDescription:Ljava/lang/String;

    .line 737
    iput v5, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 738
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    .line 740
    :cond_0
    const/16 v0, 0xcc0

    if-ne p1, v0, :cond_1

    const/16 v0, 0x990

    if-ne p2, v0, :cond_1

    .line 742
    const-string v0, "EightMP"

    iput-object v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mDescription:Ljava/lang/String;

    .line 743
    iput v5, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 744
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    .line 746
    :cond_1
    const/16 v0, 0xa20

    if-ne p1, v0, :cond_2

    const/16 v0, 0x5b0

    if-ne p2, v0, :cond_2

    .line 747
    const-string v0, "FiveMPW"

    iput-object v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mDescription:Ljava/lang/String;

    .line 748
    iput v4, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 749
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    .line 799
    :goto_0
    return-void

    .line 750
    :cond_2
    const/16 v0, 0xa20

    if-ne p1, v0, :cond_3

    const/16 v0, 0x790

    if-ne p2, v0, :cond_3

    .line 751
    const-string v0, "FiveMP"

    iput-object v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mDescription:Ljava/lang/String;

    .line 752
    iput v4, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 753
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    goto :goto_0

    .line 754
    :cond_3
    const/16 v0, 0x800

    if-ne p1, v0, :cond_4

    const/16 v0, 0x600

    if-ne p2, v0, :cond_4

    .line 755
    const-string v0, "ThreeMP"

    iput-object v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mDescription:Ljava/lang/String;

    .line 756
    const/high16 v0, 0x4040

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 757
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    goto :goto_0

    .line 758
    :cond_4
    const/16 v0, 0x640

    if-ne p1, v0, :cond_5

    const/16 v0, 0x4b0

    if-ne p2, v0, :cond_5

    .line 759
    const-string v0, "TwoMP"

    iput-object v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mDescription:Ljava/lang/String;

    .line 760
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 761
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    goto :goto_0

    .line 762
    :cond_5
    const/16 v0, 0x500

    if-ne p1, v0, :cond_6

    if-ne p2, v3, :cond_6

    .line 763
    const-string v0, "720p"

    iput-object v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mDescription:Ljava/lang/String;

    .line 764
    iput v2, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 765
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    goto :goto_0

    .line 766
    :cond_6
    if-ne p1, v3, :cond_7

    const/16 v0, 0x240

    if-ne p2, v0, :cond_7

    .line 767
    const-string v0, "PAL_D1"

    iput-object v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mDescription:Ljava/lang/String;

    .line 768
    iput v2, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 769
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    goto :goto_0

    .line 770
    :cond_7
    if-ne p1, v3, :cond_8

    const/16 v0, 0x1e0

    if-ne p2, v0, :cond_8

    .line 771
    const-string v0, "NTSC_D1"

    iput-object v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mDescription:Ljava/lang/String;

    .line 772
    iput v2, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 773
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    goto :goto_0

    .line 774
    :cond_8
    const/16 v0, 0x280

    if-ne p1, v0, :cond_9

    const/16 v0, 0x1e0

    if-ne p2, v0, :cond_9

    .line 775
    const-string v0, "VGA"

    iput-object v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mDescription:Ljava/lang/String;

    .line 776
    const v0, 0x3f19999a

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 777
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    goto :goto_0

    .line 778
    :cond_9
    const/16 v0, 0x160

    if-ne p1, v0, :cond_a

    const/16 v0, 0x120

    if-ne p2, v0, :cond_a

    .line 779
    const-string v0, "VGA"

    iput-object v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mDescription:Ljava/lang/String;

    .line 780
    const v0, 0x3ee66666

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 781
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    goto/16 :goto_0

    .line 782
    :cond_a
    const/16 v0, 0x140

    if-ne p1, v0, :cond_b

    const/16 v0, 0xf0

    if-ne p2, v0, :cond_b

    .line 783
    const/16 v0, 0x140

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mWidth:I

    .line 784
    const/16 v0, 0xf0

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mHeight:I

    .line 785
    const-string v0, "QVGA"

    iput-object v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mDescription:Ljava/lang/String;

    .line 786
    const v0, 0x3e19999a

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 787
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    goto/16 :goto_0

    .line 788
    :cond_b
    const/16 v0, 0xb0

    if-ne p1, v0, :cond_c

    const/16 v0, 0x90

    if-ne p2, v0, :cond_c

    .line 789
    const-string v0, "QCIF"

    iput-object v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mDescription:Ljava/lang/String;

    .line 790
    const v0, 0x3e4ccccd

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 791
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    goto/16 :goto_0

    .line 793
    :cond_c
    const/16 v0, 0x500

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mWidth:I

    .line 794
    const/16 v0, 0x3c0

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mHeight:I

    .line 795
    const-string v0, "1280x960"

    iput-object v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mDescription:Ljava/lang/String;

    .line 796
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 797
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    goto/16 :goto_0
.end method

.method public update(Ljava/lang/String;)V
    .locals 6
    .parameter "mString"

    .prologue
    const/high16 v5, 0x4100

    const/high16 v4, 0x40a0

    const/16 v3, 0x2d0

    const/high16 v2, 0x3f40

    const/4 v1, 0x0

    .line 650
    iput-object p1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mDescription:Ljava/lang/String;

    .line 651
    const-string v0, "EightMPW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "3264x1840"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 653
    :cond_0
    const/16 v0, 0xcc0

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mWidth:I

    .line 654
    const/16 v0, 0x730

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mHeight:I

    .line 655
    iput v5, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 656
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    .line 727
    :goto_0
    return-void

    .line 658
    :cond_1
    const-string v0, "EightMP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "3264x2448"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 660
    :cond_2
    const/16 v0, 0xcc0

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mWidth:I

    .line 661
    const/16 v0, 0x990

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mHeight:I

    .line 662
    iput v5, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 663
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    goto :goto_0

    .line 665
    :cond_3
    const-string v0, "FiveMPW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "2592x1458"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 666
    :cond_4
    const/16 v0, 0xa20

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mWidth:I

    .line 667
    const/16 v0, 0x5b2

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mHeight:I

    .line 668
    iput v4, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 669
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    goto :goto_0

    .line 670
    :cond_5
    const-string v0, "FiveMP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "2592x1936"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 671
    :cond_6
    const/16 v0, 0xa20

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mWidth:I

    .line 672
    const/16 v0, 0x790

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mHeight:I

    .line 673
    iput v4, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 674
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    goto :goto_0

    .line 675
    :cond_7
    const-string v0, "ThreeMP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "2048x1536"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 676
    :cond_8
    const/16 v0, 0x800

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mWidth:I

    .line 677
    const/16 v0, 0x600

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mHeight:I

    .line 678
    const/high16 v0, 0x4040

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 679
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    goto :goto_0

    .line 680
    :cond_9
    const-string v0, "TwoMP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "1600x1200"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 681
    :cond_a
    const/16 v0, 0x640

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mWidth:I

    .line 682
    const/16 v0, 0x4b0

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mHeight:I

    .line 683
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 684
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    goto/16 :goto_0

    .line 685
    :cond_b
    const-string v0, "720p"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 686
    const/16 v0, 0x500

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mWidth:I

    .line 687
    iput v3, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mHeight:I

    .line 688
    iput v2, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 689
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    goto/16 :goto_0

    .line 690
    :cond_c
    const-string v0, "PAL_D1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 691
    iput v3, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mWidth:I

    .line 692
    const/16 v0, 0x240

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mHeight:I

    .line 693
    iput v2, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 694
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    goto/16 :goto_0

    .line 695
    :cond_d
    const-string v0, "NTSC_D1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 696
    iput v3, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mWidth:I

    .line 697
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mHeight:I

    .line 698
    iput v2, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 699
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    goto/16 :goto_0

    .line 700
    :cond_e
    const-string v0, "VGA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 701
    const/16 v0, 0x280

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mWidth:I

    .line 702
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mHeight:I

    .line 703
    const v0, 0x3f19999a

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 704
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    goto/16 :goto_0

    .line 705
    :cond_f
    const-string v0, "CIF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 706
    const/16 v0, 0x160

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mWidth:I

    .line 707
    const/16 v0, 0x120

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mHeight:I

    .line 708
    const v0, 0x3ee66666

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 709
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    goto/16 :goto_0

    .line 710
    :cond_10
    const-string v0, "QVGA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 711
    const/16 v0, 0x140

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mWidth:I

    .line 712
    const/16 v0, 0xf0

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mHeight:I

    .line 713
    const v0, 0x3e19999a

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 714
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    goto/16 :goto_0

    .line 715
    :cond_11
    const-string v0, "QCIF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 716
    const/16 v0, 0xb0

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mWidth:I

    .line 717
    const/16 v0, 0x90

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mHeight:I

    .line 718
    const v0, 0x3e4ccccd

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 719
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    goto/16 :goto_0

    .line 721
    :cond_12
    const/16 v0, 0x500

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mWidth:I

    .line 722
    const/16 v0, 0x3c0

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mHeight:I

    .line 723
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 724
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    goto/16 :goto_0
.end method

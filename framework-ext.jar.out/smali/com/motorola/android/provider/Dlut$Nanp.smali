.class public Lcom/motorola/android/provider/Dlut$Nanp;
.super Ljava/lang/Object;
.source "Dlut.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/provider/Dlut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Nanp"
.end annotation


# static fields
.field public static final AREACODE:Ljava/lang/String; = "area_code"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "area_code ASC"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 129
    const-string v0, "content://dlut/nanp"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/provider/Dlut$Nanp;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

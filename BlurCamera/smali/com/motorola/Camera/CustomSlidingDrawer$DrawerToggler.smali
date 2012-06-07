.class Lcom/motorola/Camera/CustomSlidingDrawer$DrawerToggler;
.super Ljava/lang/Object;
.source "CustomSlidingDrawer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/CustomSlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawerToggler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/Camera/CustomSlidingDrawer;


# direct methods
.method private constructor <init>(Lcom/motorola/Camera/CustomSlidingDrawer;)V
    .locals 0
    .parameter

    .prologue
    .line 1190
    iput-object p1, p0, Lcom/motorola/Camera/CustomSlidingDrawer$DrawerToggler;->this$0:Lcom/motorola/Camera/CustomSlidingDrawer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/Camera/CustomSlidingDrawer;Lcom/motorola/Camera/CustomSlidingDrawer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1190
    invoke-direct {p0, p1}, Lcom/motorola/Camera/CustomSlidingDrawer$DrawerToggler;-><init>(Lcom/motorola/Camera/CustomSlidingDrawer;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer$DrawerToggler;->this$0:Lcom/motorola/Camera/CustomSlidingDrawer;

    #getter for: Lcom/motorola/Camera/CustomSlidingDrawer;->mLocked:Z
    invoke-static {v0}, Lcom/motorola/Camera/CustomSlidingDrawer;->access$200(Lcom/motorola/Camera/CustomSlidingDrawer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1204
    :goto_0
    return-void

    .line 1199
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer$DrawerToggler;->this$0:Lcom/motorola/Camera/CustomSlidingDrawer;

    #getter for: Lcom/motorola/Camera/CustomSlidingDrawer;->mAnimateOnClick:Z
    invoke-static {v0}, Lcom/motorola/Camera/CustomSlidingDrawer;->access$300(Lcom/motorola/Camera/CustomSlidingDrawer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1200
    iget-object v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer$DrawerToggler;->this$0:Lcom/motorola/Camera/CustomSlidingDrawer;

    invoke-virtual {v0}, Lcom/motorola/Camera/CustomSlidingDrawer;->animateToggle()V

    goto :goto_0

    .line 1202
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer$DrawerToggler;->this$0:Lcom/motorola/Camera/CustomSlidingDrawer;

    invoke-virtual {v0}, Lcom/motorola/Camera/CustomSlidingDrawer;->toggle()V

    goto :goto_0
.end method

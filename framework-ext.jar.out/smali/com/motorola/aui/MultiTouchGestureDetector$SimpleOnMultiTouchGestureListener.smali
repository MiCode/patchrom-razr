.class public Lcom/motorola/aui/MultiTouchGestureDetector$SimpleOnMultiTouchGestureListener;
.super Ljava/lang/Object;
.source "MultiTouchGestureDetector.java"

# interfaces
.implements Lcom/motorola/aui/MultiTouchGestureDetector$OnMultiTouchGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/aui/MultiTouchGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleOnMultiTouchGestureListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beginMultiTouch()V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public endMultiTouch()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method public onFlick(FF)V
    .locals 0
    .parameter "vx"
    .parameter "vy"

    .prologue
    .line 168
    return-void
.end method

.method public onGlide(FF)V
    .locals 0
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 160
    return-void
.end method

.method public onPinch(FFF)V
    .locals 0
    .parameter "ratio"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 141
    return-void
.end method

.method public onTapUp()V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method public onTwist(FFF)V
    .locals 0
    .parameter "angle"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 152
    return-void
.end method

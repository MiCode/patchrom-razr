.class public Lcom/motorola/automation/WidgetDebugNode;
.super Ljava/lang/Object;
.source "WidgetDebugNode.java"


# static fields
.field public static final CLASS_NAME:Ljava/lang/String; = "CLASS_NAME"

.field public static final HASH_CODE:Ljava/lang/String; = "HASH_CODE"

.field public static final HAS_FOCUS:Ljava/lang/String; = "HAS_FOCUS"

.field public static final IMAGE:Ljava/lang/String; = "IMAGE_DATA"

.field public static final IS_CHECKED:Ljava/lang/String; = "IS_CHECKED"

.field public static final IS_CLICKABLE:Ljava/lang/String; = "IS_CLICKABLE"

.field public static final IS_ENABLED:Ljava/lang/String; = "IS_ENABLED"

.field public static final IS_FOCUSED:Ljava/lang/String; = "IS_FOCUSED"

.field public static final IS_SELECTED:Ljava/lang/String; = "IS_SELECTED"

.field public static final LIST_COUNT:Ljava/lang/String; = "LIST_COUNT"

.field public static final POSITION_ON_X_AXIS:Ljava/lang/String; = "POSITION_ON_X_AXIS"

.field public static final POSITION_ON_Y_AXIS:Ljava/lang/String; = "POSITION_ON_Y_AXIS"

.field public static final PRIMARY_PROGRESS:Ljava/lang/String; = "PRIMARY_PROGRESS"

.field public static final SECONDARY_PROGRESS:Ljava/lang/String; = "SECONDARY_PROGRESS"

.field public static final SELECTED_ITEM_POSITION:Ljava/lang/String; = "SELECTED_ITEM_POSITION"

.field public static final TEXT:Ljava/lang/String; = "TEXT_DATA"

.field public static final UNIQUE_IDENTIFIER:Ljava/lang/String; = "UNIQUE_IDENTIFIER"

.field public static final VIEW_HEIGHT:Ljava/lang/String; = "VIEW_HEIGHT"

.field public static final VIEW_WIDTH:Ljava/lang/String; = "VIEW_WIDTH"


# instance fields
.field private attributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nodeLevel:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/automation/WidgetDebugNode;->attributes:Ljava/util/HashMap;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/automation/WidgetDebugNode;->nodeLevel:I

    .line 48
    return-void
.end method


# virtual methods
.method public addProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "property"
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 231
    iget-object v1, p0, Lcom/motorola/automation/WidgetDebugNode;->attributes:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v0

    .line 235
    :cond_1
    iget-object v1, p0, Lcom/motorola/automation/WidgetDebugNode;->attributes:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 238
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    const-string v0, "CLASS_NAME"

    invoke-virtual {p0, v0}, Lcom/motorola/automation/WidgetDebugNode;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHasFocus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    const-string v0, "HAS_FOCUS"

    invoke-virtual {p0, v0}, Lcom/motorola/automation/WidgetDebugNode;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHashCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string v0, "HASH_CODE"

    invoke-virtual {p0, v0}, Lcom/motorola/automation/WidgetDebugNode;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const-string v0, "IMAGE_DATA"

    invoke-virtual {p0, v0}, Lcom/motorola/automation/WidgetDebugNode;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsClickable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    const-string v0, "IS_CLICKABLE"

    invoke-virtual {p0, v0}, Lcom/motorola/automation/WidgetDebugNode;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsEnabled()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    const-string v0, "IS_ENABLED"

    invoke-virtual {p0, v0}, Lcom/motorola/automation/WidgetDebugNode;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsFocused()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    const-string v0, "IS_FOCUSED"

    invoke-virtual {p0, v0}, Lcom/motorola/automation/WidgetDebugNode;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsSelected()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    const-string v0, "IS_SELECTED"

    invoke-virtual {p0, v0}, Lcom/motorola/automation/WidgetDebugNode;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeLevel()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/motorola/automation/WidgetDebugNode;->nodeLevel:I

    return v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "property"

    .prologue
    const/4 v0, 0x0

    .line 249
    if-nez p1, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-object v0

    .line 252
    :cond_1
    iget-object v1, p0, Lcom/motorola/automation/WidgetDebugNode;->attributes:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    iget-object v0, p0, Lcom/motorola/automation/WidgetDebugNode;->attributes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string v0, "TEXT_DATA"

    invoke-virtual {p0, v0}, Lcom/motorola/automation/WidgetDebugNode;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUniqueIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    const-string v0, "UNIQUE_IDENTIFIER"

    invoke-virtual {p0, v0}, Lcom/motorola/automation/WidgetDebugNode;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewHeight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    const-string v0, "VIEW_HEIGHT"

    invoke-virtual {p0, v0}, Lcom/motorola/automation/WidgetDebugNode;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewWidth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    const-string v0, "VIEW_WIDTH"

    invoke-virtual {p0, v0}, Lcom/motorola/automation/WidgetDebugNode;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXPosition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    const-string v0, "POSITION_ON_X_AXIS"

    invoke-virtual {p0, v0}, Lcom/motorola/automation/WidgetDebugNode;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getYPosition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    const-string v0, "POSITION_ON_Y_AXIS"

    invoke-virtual {p0, v0}, Lcom/motorola/automation/WidgetDebugNode;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setClassName(Ljava/lang/String;)Z
    .locals 1
    .parameter "className"

    .prologue
    .line 196
    if-nez p1, :cond_0

    .line 197
    const/4 v0, 0x0

    .line 199
    :goto_0
    return v0

    :cond_0
    const-string v0, "CLASS_NAME"

    invoke-virtual {p0, v0, p1}, Lcom/motorola/automation/WidgetDebugNode;->addProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setHasFocus(Ljava/lang/String;)Z
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 161
    if-nez p1, :cond_0

    .line 162
    const/4 v0, 0x0

    .line 164
    :goto_0
    return v0

    :cond_0
    const-string v0, "HAS_FOCUS"

    invoke-virtual {p0, v0, p1}, Lcom/motorola/automation/WidgetDebugNode;->addProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setHashCode(Ljava/lang/String;)Z
    .locals 1
    .parameter "hashCode"

    .prologue
    .line 63
    if-nez p1, :cond_0

    .line 64
    const/4 v0, 0x0

    .line 65
    :goto_0
    return v0

    :cond_0
    const-string v0, "HASH_CODE"

    invoke-virtual {p0, v0, p1}, Lcom/motorola/automation/WidgetDebugNode;->addProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setImage(Ljava/lang/String;)Z
    .locals 1
    .parameter "image"

    .prologue
    .line 84
    if-nez p1, :cond_0

    .line 85
    const/4 v0, 0x0

    .line 87
    :goto_0
    return v0

    :cond_0
    const-string v0, "IMAGE_DATA"

    invoke-virtual {p0, v0, p1}, Lcom/motorola/automation/WidgetDebugNode;->addProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setIsClickable(Ljava/lang/String;)Z
    .locals 1
    .parameter "isClickable"

    .prologue
    .line 128
    if-nez p1, :cond_0

    .line 129
    const/4 v0, 0x0

    .line 131
    :goto_0
    return v0

    :cond_0
    const-string v0, "IS_CLICKABLE"

    invoke-virtual {p0, v0, p1}, Lcom/motorola/automation/WidgetDebugNode;->addProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setIsEnabled(Ljava/lang/String;)Z
    .locals 1
    .parameter "isEnabled"

    .prologue
    .line 95
    if-nez p1, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 98
    :goto_0
    return v0

    :cond_0
    const-string v0, "IS_ENABLED"

    invoke-virtual {p0, v0, p1}, Lcom/motorola/automation/WidgetDebugNode;->addProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setIsFocused(Ljava/lang/String;)Z
    .locals 1
    .parameter "isFocused"

    .prologue
    .line 106
    if-nez p1, :cond_0

    .line 107
    const/4 v0, 0x0

    .line 109
    :goto_0
    return v0

    :cond_0
    const-string v0, "IS_FOCUSED"

    invoke-virtual {p0, v0, p1}, Lcom/motorola/automation/WidgetDebugNode;->addProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setIsSelected(Ljava/lang/String;)Z
    .locals 1
    .parameter "isSelected"

    .prologue
    .line 117
    if-nez p1, :cond_0

    .line 118
    const/4 v0, 0x0

    .line 120
    :goto_0
    return v0

    :cond_0
    const-string v0, "IS_SELECTED"

    invoke-virtual {p0, v0, p1}, Lcom/motorola/automation/WidgetDebugNode;->addProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setNodeLevel(I)Z
    .locals 1
    .parameter "level"

    .prologue
    .line 51
    if-gez p1, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 55
    :goto_0
    return v0

    .line 54
    :cond_0
    iput p1, p0, Lcom/motorola/automation/WidgetDebugNode;->nodeLevel:I

    .line 55
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)Z
    .locals 1
    .parameter "text"

    .prologue
    .line 73
    if-nez p1, :cond_0

    .line 74
    const/4 v0, 0x0

    .line 76
    :goto_0
    return v0

    :cond_0
    const-string v0, "TEXT_DATA"

    invoke-virtual {p0, v0, p1}, Lcom/motorola/automation/WidgetDebugNode;->addProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setUniqueIdentifier(Ljava/lang/String;)Z
    .locals 1
    .parameter "uniqueID"

    .prologue
    .line 207
    if-nez p1, :cond_0

    .line 208
    const/4 v0, 0x0

    .line 210
    :goto_0
    return v0

    :cond_0
    const-string v0, "UNIQUE_IDENTIFIER"

    invoke-virtual {p0, v0, p1}, Lcom/motorola/automation/WidgetDebugNode;->addProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setViewHeight(Ljava/lang/String;)Z
    .locals 1
    .parameter "viewHeight"

    .prologue
    .line 150
    if-nez p1, :cond_0

    .line 151
    const/4 v0, 0x0

    .line 153
    :goto_0
    return v0

    :cond_0
    const-string v0, "VIEW_HEIGHT"

    invoke-virtual {p0, v0, p1}, Lcom/motorola/automation/WidgetDebugNode;->addProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setViewWidth(Ljava/lang/String;)Z
    .locals 1
    .parameter "viewWidth"

    .prologue
    .line 139
    if-nez p1, :cond_0

    .line 140
    const/4 v0, 0x0

    .line 142
    :goto_0
    return v0

    :cond_0
    const-string v0, "VIEW_WIDTH"

    invoke-virtual {p0, v0, p1}, Lcom/motorola/automation/WidgetDebugNode;->addProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setXPosition(Ljava/lang/String;)Z
    .locals 1
    .parameter "xPosition"

    .prologue
    .line 172
    if-nez p1, :cond_0

    .line 173
    const/4 v0, 0x0

    .line 175
    :goto_0
    return v0

    :cond_0
    const-string v0, "POSITION_ON_X_AXIS"

    invoke-virtual {p0, v0, p1}, Lcom/motorola/automation/WidgetDebugNode;->addProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setYPosition(Ljava/lang/String;)Z
    .locals 1
    .parameter "yPosition"

    .prologue
    .line 184
    if-nez p1, :cond_0

    .line 185
    const/4 v0, 0x0

    .line 187
    :goto_0
    return v0

    :cond_0
    const-string v0, "POSITION_ON_Y_AXIS"

    invoke-virtual {p0, v0, p1}, Lcom/motorola/automation/WidgetDebugNode;->addProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

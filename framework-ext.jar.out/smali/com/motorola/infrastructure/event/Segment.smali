.class public Lcom/motorola/infrastructure/event/Segment;
.super Ljava/lang/Object;
.source "Segment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/infrastructure/event/Segment$1;
    }
.end annotation


# instance fields
.field private _positionedSegAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _segNVAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field _segSerializationType:Lcom/motorola/infrastructure/event/Utils$Serialization;

.field private _segmentName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "segmentName"

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/infrastructure/event/Segment;->_segmentName:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/infrastructure/event/Segment;->_positionedSegAttributes:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/infrastructure/event/Segment;->_segNVAttributes:Ljava/util/Map;

    .line 28
    sget-object v0, Lcom/motorola/infrastructure/event/Utils$Serialization;->NOT_INTIALIZED:Lcom/motorola/infrastructure/event/Utils$Serialization;

    iput-object v0, p0, Lcom/motorola/infrastructure/event/Segment;->_segSerializationType:Lcom/motorola/infrastructure/event/Utils$Serialization;

    .line 36
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Segment:Segment: segmentName cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 39
    :cond_1
    iput-object p1, p0, Lcom/motorola/infrastructure/event/Segment;->_segmentName:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public getSerializedSegment()Ljava/lang/StringBuilder;
    .locals 6

    .prologue
    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .local v2, serializedValue:Ljava/lang/StringBuilder;
    const-string v4, "["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/infrastructure/event/Segment;->_segmentName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    sget-object v4, Lcom/motorola/infrastructure/event/Segment$1;->$SwitchMap$com$motorola$infrastructure$event$Utils$Serialization:[I

    iget-object v5, p0, Lcom/motorola/infrastructure/event/Segment;->_segSerializationType:Lcom/motorola/infrastructure/event/Utils$Serialization;

    invoke-virtual {v5}, Lcom/motorola/infrastructure/event/Utils$Serialization;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 141
    :cond_0
    :pswitch_0
    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    return-object v2

    .line 125
    :pswitch_1
    iget-object v4, p0, Lcom/motorola/infrastructure/event/Segment;->_segNVAttributes:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 126
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 131
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :pswitch_2
    iget-object v4, p0, Lcom/motorola/infrastructure/event/Segment;->_positionedSegAttributes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 132
    .local v3, value:Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 133
    :cond_1
    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 135
    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 121
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setValue(ILjava/lang/Object;)V
    .locals 7
    .parameter "position"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v4, p0, Lcom/motorola/infrastructure/event/Segment;->_segSerializationType:Lcom/motorola/infrastructure/event/Utils$Serialization;

    sget-object v5, Lcom/motorola/infrastructure/event/Utils$Serialization;->POSITION_BASED:Lcom/motorola/infrastructure/event/Utils$Serialization;

    invoke-static {v4, v5}, Lcom/motorola/infrastructure/event/Utils;->getSerializationType(Lcom/motorola/infrastructure/event/Utils$Serialization;Lcom/motorola/infrastructure/event/Utils$Serialization;)Lcom/motorola/infrastructure/event/Utils$Serialization;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/infrastructure/event/Segment;->_segSerializationType:Lcom/motorola/infrastructure/event/Utils$Serialization;

    .line 89
    if-nez p2, :cond_0

    .line 90
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Segment:setValue: value in name-value pair cannot be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 93
    :cond_0
    invoke-static {p2}, Lcom/motorola/infrastructure/event/Utils;->getStringValueofObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, stringValue:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 95
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not convert the input Object to string value for attribute at position: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 99
    :cond_1
    add-int/lit8 v2, p1, -0x1

    .line 102
    .local v2, pos:I
    iget-object v4, p0, Lcom/motorola/infrastructure/event/Segment;->_positionedSegAttributes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_2

    .line 104
    iget-object v4, p0, Lcom/motorola/infrastructure/event/Segment;->_positionedSegAttributes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int v1, v2, v4

    .line 105
    .local v1, numInsert:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-gt v0, v1, :cond_2

    .line 106
    iget-object v4, p0, Lcom/motorola/infrastructure/event/Segment;->_positionedSegAttributes:Ljava/util/List;

    const-string v5, ""

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    .end local v0           #i:I
    .end local v1           #numInsert:I
    :cond_2
    iget-object v4, p0, Lcom/motorola/infrastructure/event/Segment;->_positionedSegAttributes:Ljava/util/List;

    invoke-interface {v4, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v1, p0, Lcom/motorola/infrastructure/event/Segment;->_segSerializationType:Lcom/motorola/infrastructure/event/Utils$Serialization;

    sget-object v2, Lcom/motorola/infrastructure/event/Utils$Serialization;->NAME_VALUE_BASED:Lcom/motorola/infrastructure/event/Utils$Serialization;

    invoke-static {v1, v2}, Lcom/motorola/infrastructure/event/Utils;->getSerializationType(Lcom/motorola/infrastructure/event/Utils$Serialization;Lcom/motorola/infrastructure/event/Utils$Serialization;)Lcom/motorola/infrastructure/event/Utils$Serialization;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/infrastructure/event/Segment;->_segSerializationType:Lcom/motorola/infrastructure/event/Utils$Serialization;

    .line 59
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 60
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Segment:setValue: name or value in name-value pair cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :cond_1
    invoke-static {p2}, Lcom/motorola/infrastructure/event/Utils;->getStringValueofObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, stringValue:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 66
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not convert the input Object to string value for attribute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_2
    iget-object v1, p0, Lcom/motorola/infrastructure/event/Segment;->_segNVAttributes:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-void
.end method

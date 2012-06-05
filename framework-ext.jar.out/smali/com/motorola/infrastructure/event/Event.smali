.class public Lcom/motorola/infrastructure/event/Event;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/infrastructure/event/Event$1;
    }
.end annotation


# instance fields
.field private _eventNVAttributes:Ljava/util/Map;
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

.field private _eventName:Ljava/lang/String;

.field private _eventSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/infrastructure/event/Segment;",
            ">;"
        }
    .end annotation
.end field

.field private _headerAttributes:Ljava/util/Map;
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

.field private _positionedEventAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field _serializationType:Lcom/motorola/infrastructure/event/Utils$Serialization;

.field private _tag:Ljava/lang/String;

.field private _timestamp:J

.field private _version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "eventName"
    .parameter "version"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/infrastructure/event/Event;->_tag:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/infrastructure/event/Event;->_eventName:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/infrastructure/event/Event;->_version:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/infrastructure/event/Event;->_headerAttributes:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/infrastructure/event/Event;->_positionedEventAttributes:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/infrastructure/event/Event;->_eventNVAttributes:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/infrastructure/event/Event;->_eventSegments:Ljava/util/List;

    .line 31
    sget-object v0, Lcom/motorola/infrastructure/event/Utils$Serialization;->NOT_INTIALIZED:Lcom/motorola/infrastructure/event/Utils$Serialization;

    iput-object v0, p0, Lcom/motorola/infrastructure/event/Event;->_serializationType:Lcom/motorola/infrastructure/event/Utils$Serialization;

    .line 43
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Event:Event: tagname, event tag or version string cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 46
    :cond_2
    iput-object p1, p0, Lcom/motorola/infrastructure/event/Event;->_tag:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/motorola/infrastructure/event/Event;->_eventName:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/motorola/infrastructure/event/Event;->_version:Ljava/lang/String;

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/infrastructure/event/Event;->_timestamp:J

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 4
    .parameter "tag"
    .parameter "eventName"
    .parameter "version"
    .parameter "timestamp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/infrastructure/event/Event;->_tag:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/infrastructure/event/Event;->_eventName:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/infrastructure/event/Event;->_version:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/infrastructure/event/Event;->_headerAttributes:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/infrastructure/event/Event;->_positionedEventAttributes:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/infrastructure/event/Event;->_eventNVAttributes:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/infrastructure/event/Event;->_eventSegments:Ljava/util/List;

    .line 31
    sget-object v0, Lcom/motorola/infrastructure/event/Utils$Serialization;->NOT_INTIALIZED:Lcom/motorola/infrastructure/event/Utils$Serialization;

    iput-object v0, p0, Lcom/motorola/infrastructure/event/Event;->_serializationType:Lcom/motorola/infrastructure/event/Utils$Serialization;

    .line 62
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Event:Event: tagname or event tag name or version string cannot be null or empty and timestamp value cannot be 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1
    iput-object p1, p0, Lcom/motorola/infrastructure/event/Event;->_tag:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/motorola/infrastructure/event/Event;->_eventName:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lcom/motorola/infrastructure/event/Event;->_version:Ljava/lang/String;

    .line 68
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/infrastructure/event/Event;->_timestamp:J

    .line 69
    return-void
.end method


# virtual methods
.method public addSegments(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/infrastructure/event/Segment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, segments:Ljava/util/List;,"Ljava/util/List<Lcom/motorola/infrastructure/event/Segment;>;"
    if-nez p1, :cond_0

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Event:addSegments: segment list cannot be null in call to addSegments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/motorola/infrastructure/event/Event;->_eventSegments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 163
    return-void
.end method

.method public serializeEvent()Ljava/lang/StringBuilder;
    .locals 8

    .prologue
    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .local v3, serializedValue:Ljava/lang/StringBuilder;
    const-string v5, "["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/infrastructure/event/Event;->_eventName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ver="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/infrastructure/event/Event;->_version:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const-string v5, "time="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/motorola/infrastructure/event/Event;->_timestamp:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget-object v5, p0, Lcom/motorola/infrastructure/event/Event;->_headerAttributes:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 178
    iget-object v5, p0, Lcom/motorola/infrastructure/event/Event;->_headerAttributes:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 179
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 184
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    sget-object v5, Lcom/motorola/infrastructure/event/Event$1;->$SwitchMap$com$motorola$infrastructure$event$Utils$Serialization:[I

    iget-object v6, p0, Lcom/motorola/infrastructure/event/Event;->_serializationType:Lcom/motorola/infrastructure/event/Utils$Serialization;

    invoke-virtual {v6}, Lcom/motorola/infrastructure/event/Utils$Serialization;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 205
    :cond_1
    :pswitch_0
    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    iget-object v5, p0, Lcom/motorola/infrastructure/event/Event;->_eventSegments:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/infrastructure/event/Segment;

    .line 209
    .local v2, s:Lcom/motorola/infrastructure/event/Segment;
    invoke-virtual {v2}, Lcom/motorola/infrastructure/event/Segment;->getSerializedSegment()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 188
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #s:Lcom/motorola/infrastructure/event/Segment;
    :pswitch_1
    iget-object v5, p0, Lcom/motorola/infrastructure/event/Event;->_eventNVAttributes:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 189
    .restart local v0       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 194
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :pswitch_2
    iget-object v5, p0, Lcom/motorola/infrastructure/event/Event;->_positionedEventAttributes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 195
    .local v4, value:Ljava/lang/String;
    if-nez v4, :cond_2

    .line 196
    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 198
    :cond_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 212
    .end local v4           #value:Ljava/lang/String;
    :cond_3
    return-object v3

    .line 184
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setHeaderAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 79
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Event:setHeaderAttribute: Header name or value field cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/motorola/infrastructure/event/Event;->_headerAttributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-void
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
    .line 130
    iget-object v4, p0, Lcom/motorola/infrastructure/event/Event;->_serializationType:Lcom/motorola/infrastructure/event/Utils$Serialization;

    sget-object v5, Lcom/motorola/infrastructure/event/Utils$Serialization;->POSITION_BASED:Lcom/motorola/infrastructure/event/Utils$Serialization;

    invoke-static {v4, v5}, Lcom/motorola/infrastructure/event/Utils;->getSerializationType(Lcom/motorola/infrastructure/event/Utils$Serialization;Lcom/motorola/infrastructure/event/Utils$Serialization;)Lcom/motorola/infrastructure/event/Utils$Serialization;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/infrastructure/event/Event;->_serializationType:Lcom/motorola/infrastructure/event/Utils$Serialization;

    .line 132
    if-nez p2, :cond_0

    .line 133
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Event:setValue: value for position based attribute cannot be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 135
    :cond_0
    const/4 v4, 0x1

    if-ge p1, v4, :cond_1

    .line 136
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Event:setValue: position to be inserted in has to be 1 or higher"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 138
    :cond_1
    invoke-static {p2}, Lcom/motorola/infrastructure/event/Utils;->getStringValueofObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, stringValue:Ljava/lang/String;
    if-nez v3, :cond_2

    .line 140
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

    .line 144
    :cond_2
    add-int/lit8 v2, p1, -0x1

    .line 147
    .local v2, pos:I
    iget-object v4, p0, Lcom/motorola/infrastructure/event/Event;->_positionedEventAttributes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_3

    .line 149
    iget-object v4, p0, Lcom/motorola/infrastructure/event/Event;->_positionedEventAttributes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int v1, v2, v4

    .line 150
    .local v1, numInsert:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-gt v0, v1, :cond_3

    .line 151
    iget-object v4, p0, Lcom/motorola/infrastructure/event/Event;->_positionedEventAttributes:Ljava/util/List;

    const-string v5, ""

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    .end local v0           #i:I
    .end local v1           #numInsert:I
    :cond_3
    iget-object v4, p0, Lcom/motorola/infrastructure/event/Event;->_positionedEventAttributes:Ljava/util/List;

    invoke-interface {v4, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 155
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
    .line 101
    iget-object v1, p0, Lcom/motorola/infrastructure/event/Event;->_serializationType:Lcom/motorola/infrastructure/event/Utils$Serialization;

    sget-object v2, Lcom/motorola/infrastructure/event/Utils$Serialization;->NAME_VALUE_BASED:Lcom/motorola/infrastructure/event/Utils$Serialization;

    invoke-static {v1, v2}, Lcom/motorola/infrastructure/event/Utils;->getSerializationType(Lcom/motorola/infrastructure/event/Utils$Serialization;Lcom/motorola/infrastructure/event/Utils$Serialization;)Lcom/motorola/infrastructure/event/Utils$Serialization;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/infrastructure/event/Event;->_serializationType:Lcom/motorola/infrastructure/event/Utils$Serialization;

    .line 103
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 104
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Event:setValue: name or value in name-value pair cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    :cond_1
    invoke-static {p2}, Lcom/motorola/infrastructure/event/Utils;->getStringValueofObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, stringValue:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 110
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

    .line 112
    :cond_2
    iget-object v1, p0, Lcom/motorola/infrastructure/event/Event;->_eventNVAttributes:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    return-void
.end method

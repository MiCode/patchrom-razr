.class public final Lcom/motorola/infrastructure/event/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/infrastructure/event/Utils$Serialization;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSerializationType(Lcom/motorola/infrastructure/event/Utils$Serialization;Lcom/motorola/infrastructure/event/Utils$Serialization;)Lcom/motorola/infrastructure/event/Utils$Serialization;
    .locals 3
    .parameter "currentSerialization"
    .parameter "requestedSerializationType"

    .prologue
    .line 37
    sget-object v0, Lcom/motorola/infrastructure/event/Utils$Serialization;->NOT_INTIALIZED:Lcom/motorola/infrastructure/event/Utils$Serialization;

    if-ne p0, v0, :cond_0

    .line 44
    .end local p1
    :goto_0
    return-object p1

    .line 39
    .restart local p1
    :cond_0
    if-eq p1, p0, :cond_1

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attributes already requested to be serialized as: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/motorola/infrastructure/event/Utils$Serialization;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Cannot change serialization to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/motorola/infrastructure/event/Utils$Serialization;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object p1, p0

    .line 44
    goto :goto_0
.end method

.method public static getStringValueofObject(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 134
    :try_start_0
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 135
    check-cast p0, Ljava/lang/String;

    .line 153
    .end local p0
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    return-object p0

    .line 136
    .end local v0           #e:Ljava/lang/Exception;
    .restart local p0
    :cond_0
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 137
    check-cast p0, Ljava/lang/Integer;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 138
    .restart local p0
    :cond_1
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 139
    check-cast p0, Ljava/lang/Boolean;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 140
    .restart local p0
    :cond_2
    instance-of v1, p0, Ljava/lang/Double;

    if-eqz v1, :cond_3

    .line 141
    check-cast p0, Ljava/lang/Double;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 142
    .restart local p0
    :cond_3
    instance-of v1, p0, Ljava/lang/Long;

    if-eqz v1, :cond_4

    .line 143
    check-cast p0, Ljava/lang/Long;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 144
    .restart local p0
    :cond_4
    instance-of v1, p0, Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 145
    check-cast p0, Ljava/util/ArrayList;

    .end local p0
    invoke-static {p0}, Lcom/motorola/infrastructure/event/Utils;->parseListAttributes(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 146
    .restart local p0
    :cond_5
    instance-of v1, p0, Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_6

    .line 147
    check-cast p0, Ljava/util/LinkedHashMap;

    .end local p0
    invoke-static {p0}, Lcom/motorola/infrastructure/event/Utils;->parseMapAttributes(Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 150
    .restart local p0
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Event: Unknown object type provided as input to setValue for Event"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .restart local v0       #e:Ljava/lang/Exception;
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static parseListAttributes(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 62
    .local p0, listValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .local v2, stringValue:Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 66
    .local v3, value:Ljava/lang/Object;
    invoke-static {v3}, Lcom/motorola/infrastructure/event/Utils;->getStringValueofObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, str:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 68
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Could not convert the input Object to string value for attribute "

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 70
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 74
    .end local v1           #str:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/Object;
    :cond_1
    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 77
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 79
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #stringValue:Ljava/lang/StringBuilder;
    :goto_1
    return-object v4

    :cond_3
    const-string v4, ""

    goto :goto_1
.end method

.method public static parseMapAttributes(Ljava/util/LinkedHashMap;)Ljava/lang/String;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, mapValues:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .local v3, stringValue:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 102
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 103
    .local v4, value:Ljava/lang/Object;
    invoke-static {v4}, Lcom/motorola/infrastructure/event/Utils;->getStringValueofObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, str:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 105
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Could not convert the input Object to string value for attribute "

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 107
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 110
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2           #str:Ljava/lang/String;
    .end local v4           #value:Ljava/lang/Object;
    :cond_1
    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 111
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 114
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 116
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #stringValue:Ljava/lang/StringBuilder;
    :goto_1
    return-object v5

    :cond_3
    const-string v5, ""

    goto :goto_1
.end method

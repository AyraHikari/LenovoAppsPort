.class Lcom/google/protobuf/nano/FieldData;
.super Ljava/lang/Object;
.source "FieldData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private cachedExtension:Lcom/google/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/nano/Extension<",
            "**>;"
        }
    .end annotation
.end field

.field private unknownFieldData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/nano/UnknownFieldData;",
            ">;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lcom/google/protobuf/nano/Extension;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/nano/Extension<",
            "*TT;>;TT;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    .line 50
    iput-object p2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    return-void
.end method

.method private toByteArray()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    invoke-virtual {p0}, Lcom/google/protobuf/nano/FieldData;->computeSerializedSize()I

    move-result v0

    new-array v0, v0, [B

    .line 185
    invoke-static {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v1

    .line 186
    invoke-virtual {p0, v1}, Lcom/google/protobuf/nano/FieldData;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-object v0
.end method


# virtual methods
.method addUnknownField(Lcom/google/protobuf/nano/UnknownFieldData;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final clone()Lcom/google/protobuf/nano/FieldData;
    .locals 5

    .line 192
    new-instance v0, Lcom/google/protobuf/nano/FieldData;

    invoke-direct {v0}, Lcom/google/protobuf/nano/FieldData;-><init>()V

    .line 194
    :try_start_0
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    iput-object v1, v0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    .line 195
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 196
    iput-object v1, v0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    goto :goto_0

    .line 198
    :cond_0
    iget-object v1, v0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 204
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 206
    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v1, v1, Lcom/google/protobuf/nano/MessageNano;

    if-eqz v1, :cond_2

    .line 207
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v1, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/MessageNano;->clone()Lcom/google/protobuf/nano/MessageNano;

    move-result-object v1

    iput-object v1, v0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto/16 :goto_3

    .line 208
    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v1, v1, [B

    if-eqz v1, :cond_3

    .line 209
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto/16 :goto_3

    .line 210
    :cond_3
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v1, v1, [[B

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 211
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v1, [[B

    check-cast v1, [[B

    .line 212
    array-length v3, v1

    new-array v3, v3, [[B

    .line 213
    iput-object v3, v0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    .line 214
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_a

    .line 215
    aget-object v4, v1, v2

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 217
    :cond_4
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v1, v1, [Z

    if-eqz v1, :cond_5

    .line 218
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v1, [Z

    check-cast v1, [Z

    invoke-virtual {v1}, [Z->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto :goto_3

    .line 219
    :cond_5
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v1, v1, [I

    if-eqz v1, :cond_6

    .line 220
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto :goto_3

    .line 221
    :cond_6
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v1, v1, [J

    if-eqz v1, :cond_7

    .line 222
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v1, [J

    check-cast v1, [J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto :goto_3

    .line 223
    :cond_7
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v1, v1, [F

    if-eqz v1, :cond_8

    .line 224
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v1, [F

    check-cast v1, [F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto :goto_3

    .line 225
    :cond_8
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v1, v1, [D

    if-eqz v1, :cond_9

    .line 226
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v1, [D

    check-cast v1, [D

    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto :goto_3

    .line 227
    :cond_9
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v1, v1, [Lcom/google/protobuf/nano/MessageNano;

    if-eqz v1, :cond_a

    .line 228
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v1, [Lcom/google/protobuf/nano/MessageNano;

    check-cast v1, [Lcom/google/protobuf/nano/MessageNano;

    .line 229
    array-length v3, v1

    new-array v3, v3, [Lcom/google/protobuf/nano/MessageNano;

    .line 230
    iput-object v3, v0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    .line 231
    :goto_2
    array-length v4, v1

    if-ge v2, v4, :cond_a

    .line 232
    aget-object v4, v1, v2

    invoke-virtual {v4}, Lcom/google/protobuf/nano/MessageNano;->clone()Lcom/google/protobuf/nano/MessageNano;

    move-result-object v4

    aput-object v4, v3, v2
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_a
    :goto_3
    return-object v0

    :catch_0
    move-exception v0

    .line 237
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lcom/google/protobuf/nano/FieldData;->clone()Lcom/google/protobuf/nano/FieldData;

    move-result-object v0

    return-object v0
.end method

.method computeSerializedSize()I
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 101
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    invoke-virtual {v1, v0}, Lcom/google/protobuf/nano/Extension;->computeSerializedSize(Ljava/lang/Object;)I

    move-result v0

    goto :goto_1

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/nano/UnknownFieldData;

    .line 104
    invoke-virtual {v2}, Lcom/google/protobuf/nano/UnknownFieldData;->computeSerializedSize()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 125
    :cond_0
    instance-of v0, p1, Lcom/google/protobuf/nano/FieldData;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 129
    :cond_1
    check-cast p1, Lcom/google/protobuf/nano/FieldData;

    .line 130
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v0, :cond_a

    .line 134
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    iget-object v2, p1, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    if-eq v0, v2, :cond_2

    return v1

    .line 137
    :cond_2
    iget-object v0, v0, Lcom/google/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_3

    .line 139
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 141
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v1, v0, [B

    if-eqz v1, :cond_4

    .line 142
    check-cast v0, [B

    check-cast v0, [B

    iget-object p1, p1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast p1, [B

    check-cast p1, [B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    .line 143
    :cond_4
    instance-of v1, v0, [I

    if-eqz v1, :cond_5

    .line 144
    check-cast v0, [I

    check-cast v0, [I

    iget-object p1, p1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast p1, [I

    check-cast p1, [I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    return p1

    .line 145
    :cond_5
    instance-of v1, v0, [J

    if-eqz v1, :cond_6

    .line 146
    check-cast v0, [J

    check-cast v0, [J

    iget-object p1, p1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast p1, [J

    check-cast p1, [J

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p1

    return p1

    .line 147
    :cond_6
    instance-of v1, v0, [F

    if-eqz v1, :cond_7

    .line 148
    check-cast v0, [F

    check-cast v0, [F

    iget-object p1, p1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast p1, [F

    check-cast p1, [F

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p1

    return p1

    .line 149
    :cond_7
    instance-of v1, v0, [D

    if-eqz v1, :cond_8

    .line 150
    check-cast v0, [D

    check-cast v0, [D

    iget-object p1, p1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast p1, [D

    check-cast p1, [D

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result p1

    return p1

    .line 151
    :cond_8
    instance-of v1, v0, [Z

    if-eqz v1, :cond_9

    .line 152
    check-cast v0, [Z

    check-cast v0, [Z

    iget-object p1, p1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast p1, [Z

    check-cast p1, [Z

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result p1

    return p1

    .line 154
    :cond_9
    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 157
    :cond_a
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v1, p1, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-eqz v1, :cond_b

    .line 159
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 163
    :cond_b
    :try_start_0
    invoke-direct {p0}, Lcom/google/protobuf/nano/FieldData;->toByteArray()[B

    move-result-object v0

    invoke-direct {p1}, Lcom/google/protobuf/nano/FieldData;->toByteArray()[B

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 166
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method getUnknownField(I)Lcom/google/protobuf/nano/UnknownFieldData;
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 65
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/nano/UnknownFieldData;

    return-object p1

    :cond_1
    return-object v1
.end method

.method getUnknownFieldSize()I
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 75
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method getValue(Lcom/google/protobuf/nano/Extension;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/nano/Extension<",
            "*TT;>;)TT;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Tried to getExtension with a differernt Extension."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_1
    iput-object p1, p0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    .line 86
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/Extension;->getValueFrom(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 87
    iput-object p1, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    .line 89
    :goto_0
    iget-object p1, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x20f

    .line 175
    :try_start_0
    invoke-direct {p0}, Lcom/google/protobuf/nano/FieldData;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v1

    return v0

    :catch_0
    move-exception v0

    .line 178
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method setValue(Lcom/google/protobuf/nano/Extension;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/nano/Extension<",
            "*TT;>;TT;)V"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    .line 94
    iput-object p2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 95
    iput-object p1, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    return-void
.end method

.method writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 112
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    invoke-virtual {v1, v0, p1}, Lcom/google/protobuf/nano/Extension;->writeTo(Ljava/lang/Object;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    goto :goto_1

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/nano/UnknownFieldData;

    .line 115
    invoke-virtual {v1, p1}, Lcom/google/protobuf/nano/UnknownFieldData;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

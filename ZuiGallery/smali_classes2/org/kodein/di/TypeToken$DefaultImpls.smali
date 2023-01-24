.class public final Lorg/kodein/di/TypeToken$DefaultImpls;
.super Ljava/lang/Object;
.source "typeToken.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/kodein/di/TypeToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\ntypeToken.kt\nKotlin\n*S Kotlin\n*F\n+ 1 typeToken.kt\norg/kodein/di/TypeToken$DefaultImpls\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,212:1\n10995#2,3:213\n1499#3,3:216\n*E\n*S KotlinDebug\n*F\n+ 1 typeToken.kt\norg/kodein/di/TypeToken$DefaultImpls\n*L\n90#1,3:213\n98#1,3:216\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public static isAssignableFrom(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/TypeToken<",
            "TT;>;",
            "Lorg/kodein/di/TypeToken<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "typeToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_9

    invoke-static {}, Lorg/kodein/di/TypeTokenKt;->getAnyToken()Lorg/kodein/di/TypeToken;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 84
    :cond_0
    invoke-interface {p0}, Lorg/kodein/di/TypeToken;->getRaw()Lorg/kodein/di/TypeToken;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 85
    invoke-interface {p1}, Lorg/kodein/di/TypeToken;->getRaw()Lorg/kodein/di/TypeToken;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 86
    invoke-interface {p0}, Lorg/kodein/di/TypeToken;->getGenericParameters()[Lorg/kodein/di/TypeToken;

    move-result-object p0

    .line 87
    array-length v0, p0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    return v1

    .line 89
    :cond_2
    invoke-interface {p1}, Lorg/kodein/di/TypeToken;->getGenericParameters()[Lorg/kodein/di/TypeToken;

    move-result-object p1

    .line 214
    array-length v0, p0

    move v3, v2

    move v4, v3

    :goto_1
    if-ge v3, v0, :cond_4

    aget-object v5, p0, v3

    add-int/lit8 v6, v4, 0x1

    .line 91
    aget-object v4, p1, v4

    .line 92
    invoke-interface {v5, v4}, Lorg/kodein/di/TypeToken;->isAssignableFrom(Lorg/kodein/di/TypeToken;)Z

    move-result v4

    if-nez v4, :cond_3

    return v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_1

    :cond_4
    return v1

    .line 98
    :cond_5
    invoke-interface {p1}, Lorg/kodein/di/TypeToken;->getSuper()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 216
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    move v1, v2

    goto :goto_2

    .line 217
    :cond_7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/kodein/di/TypeToken;

    .line 98
    invoke-interface {p0, v0}, Lorg/kodein/di/TypeToken;->isAssignableFrom(Lorg/kodein/di/TypeToken;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_9
    :goto_2
    return v1
.end method

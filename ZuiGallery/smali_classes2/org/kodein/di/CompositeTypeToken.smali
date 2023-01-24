.class public final Lorg/kodein/di/CompositeTypeToken;
.super Ljava/lang/Object;
.source "typeToken.kt"

# interfaces
.implements Lorg/kodein/di/TypeToken;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/kodein/di/TypeToken<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\ntypeToken.kt\nKotlin\n*S Kotlin\n*F\n+ 1 typeToken.kt\norg/kodein/di/CompositeTypeToken\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,212:1\n10930#2,2:213\n*E\n*S KotlinDebug\n*F\n+ 1 typeToken.kt\norg/kodein/di/CompositeTypeToken\n*L\n134#1,2:213\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B/\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u001a\u0010\u0004\u001a\u000e\u0012\n\u0008\u0001\u0012\u0006\u0012\u0002\u0008\u00030\u00020\u0005\"\u0006\u0012\u0002\u0008\u00030\u0002\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0014H\u0016J\u0019\u0010\u0016\u001a\u000e\u0012\n\u0008\u0001\u0012\u0006\u0012\u0002\u0008\u00030\u00020\u0005H\u0016\u00a2\u0006\u0002\u0010\nJ\u0010\u0010\u0017\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0002H\u0016J\u0012\u0010\u0018\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00020\u0019H\u0016J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016J\u0008\u0010\u001c\u001a\u00020\u0011H\u0016J\u0008\u0010\u001d\u001a\u00020\u0011H\u0016J\u0008\u0010\u001e\u001a\u00020\u0014H\u0016J\u0008\u0010\u001f\u001a\u00020\u0014H\u0016R\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001f\u0010\u0004\u001a\u000e\u0012\n\u0008\u0001\u0012\u0006\u0012\u0002\u0008\u00030\u00020\u0005\u00a2\u0006\n\n\u0002\u0010\u000b\u001a\u0004\u0008\t\u0010\n\u00a8\u0006 "
    }
    d2 = {
        "Lorg/kodein/di/CompositeTypeToken;",
        "T",
        "Lorg/kodein/di/TypeToken;",
        "main",
        "params",
        "",
        "(Lorg/kodein/di/TypeToken;[Lorg/kodein/di/TypeToken;)V",
        "getMain",
        "()Lorg/kodein/di/TypeToken;",
        "getParams",
        "()[Lorg/kodein/di/TypeToken;",
        "[Lorg/kodein/di/TypeToken;",
        "checkIsReified",
        "",
        "disp",
        "",
        "equals",
        "",
        "other",
        "fullDispString",
        "",
        "fullErasedDispString",
        "getGenericParameters",
        "getRaw",
        "getSuper",
        "",
        "hashCode",
        "",
        "isGeneric",
        "isWildcard",
        "simpleDispString",
        "simpleErasedDispString",
        "kodein-di-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final main:Lorg/kodein/di/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/kodein/di/TypeToken<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final params:[Lorg/kodein/di/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/kodein/di/TypeToken<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Lorg/kodein/di/TypeToken;[Lorg/kodein/di/TypeToken;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/TypeToken<",
            "TT;>;[",
            "Lorg/kodein/di/TypeToken<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "main"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/kodein/di/CompositeTypeToken;->main:Lorg/kodein/di/TypeToken;

    iput-object p2, p0, Lorg/kodein/di/CompositeTypeToken;->params:[Lorg/kodein/di/TypeToken;

    .line 120
    array-length p1, p2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    return-void

    .line 121
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CompositeTypeToken must be given at least one type parameter"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method


# virtual methods
.method public checkIsReified(Ljava/lang/Object;)V
    .locals 4

    const-string v0, "disp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lorg/kodein/di/CompositeTypeToken;->main:Lorg/kodein/di/TypeToken;

    invoke-interface {v0, p1}, Lorg/kodein/di/TypeToken;->checkIsReified(Ljava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lorg/kodein/di/CompositeTypeToken;->params:[Lorg/kodein/di/TypeToken;

    .line 213
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 134
    invoke-interface {v3, p1}, Lorg/kodein/di/TypeToken;->checkIsReified(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 149
    move-object v0, p0

    check-cast v0, Lorg/kodein/di/CompositeTypeToken;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    return v1

    .line 151
    :cond_0
    instance-of v0, p1, Lorg/kodein/di/CompositeTypeToken;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 153
    :cond_1
    iget-object v0, p0, Lorg/kodein/di/CompositeTypeToken;->main:Lorg/kodein/di/TypeToken;

    check-cast p1, Lorg/kodein/di/CompositeTypeToken;

    iget-object v3, p1, Lorg/kodein/di/CompositeTypeToken;->main:Lorg/kodein/di/TypeToken;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/kodein/di/CompositeTypeToken;->params:[Lorg/kodein/di/TypeToken;

    iget-object p1, p1, Lorg/kodein/di/CompositeTypeToken;->params:[Lorg/kodein/di/TypeToken;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1
.end method

.method public fullDispString()Ljava/lang/String;
    .locals 11

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/kodein/di/CompositeTypeToken;->main:Lorg/kodein/di/TypeToken;

    invoke-interface {v1}, Lorg/kodein/di/TypeToken;->fullErasedDispString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/kodein/di/CompositeTypeToken;->params:[Lorg/kodein/di/TypeToken;

    const-string v1, ", "

    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    sget-object v1, Lorg/kodein/di/CompositeTypeToken$fullDispString$1;->INSTANCE:Lorg/kodein/di/CompositeTypeToken$fullDispString$1;

    move-object v8, v1

    check-cast v8, Lkotlin/jvm/functions/Function1;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x1e

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public fullErasedDispString()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/kodein/di/CompositeTypeToken;->main:Lorg/kodein/di/TypeToken;

    invoke-interface {v0}, Lorg/kodein/di/TypeToken;->fullErasedDispString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGenericParameters()[Lorg/kodein/di/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/kodein/di/TypeToken<",
            "*>;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lorg/kodein/di/CompositeTypeToken;->params:[Lorg/kodein/di/TypeToken;

    return-object v0
.end method

.method public final getMain()Lorg/kodein/di/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kodein/di/TypeToken<",
            "TT;>;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lorg/kodein/di/CompositeTypeToken;->main:Lorg/kodein/di/TypeToken;

    return-object v0
.end method

.method public final getParams()[Lorg/kodein/di/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/kodein/di/TypeToken<",
            "*>;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lorg/kodein/di/CompositeTypeToken;->params:[Lorg/kodein/di/TypeToken;

    return-object v0
.end method

.method public getRaw()Lorg/kodein/di/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kodein/di/TypeToken<",
            "TT;>;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lorg/kodein/di/CompositeTypeToken;->main:Lorg/kodein/di/TypeToken;

    invoke-interface {v0}, Lorg/kodein/di/TypeToken;->getRaw()Lorg/kodein/di/TypeToken;

    move-result-object v0

    return-object v0
.end method

.method public getSuper()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/kodein/di/TypeToken<",
            "*>;>;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lorg/kodein/di/CompositeTypeToken;->main:Lorg/kodein/di/TypeToken;

    invoke-interface {v0}, Lorg/kodein/di/TypeToken;->getSuper()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 157
    iget-object v0, p0, Lorg/kodein/di/CompositeTypeToken;->main:Lorg/kodein/di/TypeToken;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/kodein/di/CompositeTypeToken;->params:[Lorg/kodein/di/TypeToken;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isAssignableFrom(Lorg/kodein/di/TypeToken;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/TypeToken<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "typeToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-static {p0, p1}, Lorg/kodein/di/TypeToken$DefaultImpls;->isAssignableFrom(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;)Z

    move-result p1

    return p1
.end method

.method public isGeneric()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isWildcard()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public simpleDispString()Ljava/lang/String;
    .locals 11

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/kodein/di/CompositeTypeToken;->main:Lorg/kodein/di/TypeToken;

    invoke-interface {v1}, Lorg/kodein/di/TypeToken;->simpleErasedDispString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/kodein/di/CompositeTypeToken;->params:[Lorg/kodein/di/TypeToken;

    const-string v1, ", "

    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    sget-object v1, Lorg/kodein/di/CompositeTypeToken$simpleDispString$1;->INSTANCE:Lorg/kodein/di/CompositeTypeToken$simpleDispString$1;

    move-object v8, v1

    check-cast v8, Lkotlin/jvm/functions/Function1;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x1e

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public simpleErasedDispString()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/kodein/di/CompositeTypeToken;->main:Lorg/kodein/di/TypeToken;

    invoke-interface {v0}, Lorg/kodein/di/TypeToken;->simpleErasedDispString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

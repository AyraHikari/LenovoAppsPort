.class public final Lorg/kodein/di/internal/TypeChecker$Down;
.super Lorg/kodein/di/internal/TypeChecker;
.source "KodeinTreeImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/kodein/di/internal/TypeChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Down"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0011\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003\u00a2\u0006\u0002\u0010\u0004J\u0014\u0010\n\u001a\u00020\u00062\n\u0010\u000b\u001a\u0006\u0012\u0002\u0008\u00030\u0003H\u0016J\r\u0010\u000c\u001a\u0006\u0012\u0002\u0008\u00030\u0003H\u00c6\u0003J\u0017\u0010\r\u001a\u00020\u00002\u000c\u0008\u0002\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u00062\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000fH\u00d6\u0003J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0007R\u0018\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0014"
    }
    d2 = {
        "Lorg/kodein/di/internal/TypeChecker$Down;",
        "Lorg/kodein/di/internal/TypeChecker;",
        "type",
        "Lorg/kodein/di/TypeToken;",
        "(Lorg/kodein/di/TypeToken;)V",
        "isAny",
        "",
        "()Z",
        "getType",
        "()Lorg/kodein/di/TypeToken;",
        "check",
        "other",
        "component1",
        "copy",
        "equals",
        "",
        "hashCode",
        "",
        "toString",
        "",
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
.field private final isAny:Z

.field private final type:Lorg/kodein/di/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/kodein/di/TypeToken<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/kodein/di/TypeToken;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/TypeToken<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, v0}, Lorg/kodein/di/internal/TypeChecker;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lorg/kodein/di/internal/TypeChecker$Down;->type:Lorg/kodein/di/TypeToken;

    .line 12
    invoke-virtual {p0}, Lorg/kodein/di/internal/TypeChecker$Down;->getType()Lorg/kodein/di/TypeToken;

    move-result-object p1

    invoke-static {}, Lorg/kodein/di/TypeTokenKt;->getAnyToken()Lorg/kodein/di/TypeToken;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/kodein/di/internal/TypeChecker$Down;->isAny:Z

    return-void
.end method

.method public static synthetic copy$default(Lorg/kodein/di/internal/TypeChecker$Down;Lorg/kodein/di/TypeToken;ILjava/lang/Object;)Lorg/kodein/di/internal/TypeChecker$Down;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/kodein/di/internal/TypeChecker$Down;->getType()Lorg/kodein/di/TypeToken;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/kodein/di/internal/TypeChecker$Down;->copy(Lorg/kodein/di/TypeToken;)Lorg/kodein/di/internal/TypeChecker$Down;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public check(Lorg/kodein/di/TypeToken;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/TypeToken<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-boolean v0, p0, Lorg/kodein/di/internal/TypeChecker$Down;->isAny:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/kodein/di/internal/TypeChecker$Down;->getType()Lorg/kodein/di/TypeToken;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/kodein/di/TypeToken;->isAssignableFrom(Lorg/kodein/di/TypeToken;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final component1()Lorg/kodein/di/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kodein/di/TypeToken<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/kodein/di/internal/TypeChecker$Down;->getType()Lorg/kodein/di/TypeToken;

    move-result-object v0

    return-object v0
.end method

.method public final copy(Lorg/kodein/di/TypeToken;)Lorg/kodein/di/internal/TypeChecker$Down;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/TypeToken<",
            "*>;)",
            "Lorg/kodein/di/internal/TypeChecker$Down;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/kodein/di/internal/TypeChecker$Down;

    invoke-direct {v0, p1}, Lorg/kodein/di/internal/TypeChecker$Down;-><init>(Lorg/kodein/di/TypeToken;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lorg/kodein/di/internal/TypeChecker$Down;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/kodein/di/internal/TypeChecker$Down;

    invoke-virtual {p0}, Lorg/kodein/di/internal/TypeChecker$Down;->getType()Lorg/kodein/di/TypeToken;

    move-result-object v0

    invoke-virtual {p1}, Lorg/kodein/di/internal/TypeChecker$Down;->getType()Lorg/kodein/di/TypeToken;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public getType()Lorg/kodein/di/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kodein/di/TypeToken<",
            "*>;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lorg/kodein/di/internal/TypeChecker$Down;->type:Lorg/kodein/di/TypeToken;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/kodein/di/internal/TypeChecker$Down;->getType()Lorg/kodein/di/TypeToken;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isAny()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lorg/kodein/di/internal/TypeChecker$Down;->isAny:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Down(type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/kodein/di/internal/TypeChecker$Down;->getType()Lorg/kodein/di/TypeToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

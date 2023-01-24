.class public final Lorg/kodein/di/SearchDSL$Binding;
.super Ljava/lang/Object;
.source "Search.kt"

# interfaces
.implements Lorg/kodein/di/SearchDSL$Spec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/kodein/di/SearchDSL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Binding"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0015\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000f"
    }
    d2 = {
        "Lorg/kodein/di/SearchDSL$Binding;",
        "Lorg/kodein/di/SearchDSL$Spec;",
        "type",
        "Lorg/kodein/di/TypeToken;",
        "tag",
        "",
        "(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)V",
        "getTag",
        "()Ljava/lang/Object;",
        "getType",
        "()Lorg/kodein/di/TypeToken;",
        "apply",
        "",
        "specs",
        "Lorg/kodein/di/SearchSpecs;",
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
.field private final tag:Ljava/lang/Object;

.field private final type:Lorg/kodein/di/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/kodein/di/TypeToken<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/TypeToken<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/kodein/di/SearchDSL$Binding;->type:Lorg/kodein/di/TypeToken;

    iput-object p2, p0, Lorg/kodein/di/SearchDSL$Binding;->tag:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/kodein/di/TypeToken;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 64
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/kodein/di/SearchDSL$Binding;-><init>(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public apply(Lorg/kodein/di/SearchSpecs;)V
    .locals 1

    const-string v0, "specs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lorg/kodein/di/SearchDSL$Binding;->type:Lorg/kodein/di/TypeToken;

    invoke-virtual {p1, v0}, Lorg/kodein/di/SearchSpecs;->setType(Lorg/kodein/di/TypeToken;)V

    iget-object v0, p0, Lorg/kodein/di/SearchDSL$Binding;->tag:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lorg/kodein/di/SearchSpecs;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final getTag()Ljava/lang/Object;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/kodein/di/SearchDSL$Binding;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public final getType()Lorg/kodein/di/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kodein/di/TypeToken<",
            "*>;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lorg/kodein/di/SearchDSL$Binding;->type:Lorg/kodein/di/TypeToken;

    return-object v0
.end method

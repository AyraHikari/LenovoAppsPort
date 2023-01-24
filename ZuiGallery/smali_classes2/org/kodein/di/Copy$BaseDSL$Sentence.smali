.class public final Lorg/kodein/di/Copy$BaseDSL$Sentence;
.super Ljava/lang/Object;
.source "Copy.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/kodein/di/Copy$BaseDSL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Sentence"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCopy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Copy.kt\norg/kodein/di/Copy$BaseDSL$Sentence\n*L\n1#1,134:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0013\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0005J\u0011\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0086\u0004J\u0011\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u000cH\u0086\u0004R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lorg/kodein/di/Copy$BaseDSL$Sentence;",
        "",
        "specs",
        "",
        "Lorg/kodein/di/CopySpecs;",
        "(Ljava/util/List;)V",
        "all",
        "Lorg/kodein/di/SearchSpecs;",
        "spec",
        "Lorg/kodein/di/SearchDSL$Spec;",
        "the",
        "binding",
        "Lorg/kodein/di/SearchDSL$Binding;",
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
.field private final specs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/kodein/di/CopySpecs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/kodein/di/CopySpecs;",
            ">;)V"
        }
    .end annotation

    const-string v0, "specs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/kodein/di/Copy$BaseDSL$Sentence;->specs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final all(Lorg/kodein/di/SearchDSL$Spec;)Lorg/kodein/di/SearchSpecs;
    .locals 2

    const-string v0, "spec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    new-instance v0, Lorg/kodein/di/CopySpecs;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/kodein/di/CopySpecs;-><init>(Z)V

    move-object v1, v0

    check-cast v1, Lorg/kodein/di/SearchSpecs;

    invoke-interface {p1, v1}, Lorg/kodein/di/SearchDSL$Spec;->apply(Lorg/kodein/di/SearchSpecs;)V

    iget-object p1, p0, Lorg/kodein/di/Copy$BaseDSL$Sentence;->specs:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public final the(Lorg/kodein/di/SearchDSL$Binding;)Lorg/kodein/di/SearchSpecs;
    .locals 2

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    new-instance v0, Lorg/kodein/di/CopySpecs;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/kodein/di/CopySpecs;-><init>(Z)V

    move-object v1, v0

    check-cast v1, Lorg/kodein/di/SearchSpecs;

    invoke-virtual {p1, v1}, Lorg/kodein/di/SearchDSL$Binding;->apply(Lorg/kodein/di/SearchSpecs;)V

    iget-object p1, p0, Lorg/kodein/di/Copy$BaseDSL$Sentence;->specs:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

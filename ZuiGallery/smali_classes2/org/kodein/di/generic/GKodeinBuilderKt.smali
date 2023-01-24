.class public final Lorg/kodein/di/generic/GKodeinBuilderKt;
.super Ljava/lang/Object;
.source "GKodeinBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGKodeinBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GKodeinBuilder.kt\norg/kodein/di/generic/GKodeinBuilderKt\n+ 2 types.kt\norg/kodein/di/TypesKt\n*L\n1#1,56:1\n17#1:58\n27#1:60\n45#1:63\n282#2:57\n282#2:59\n282#2:61\n282#2:62\n282#2:64\n282#2:65\n282#2:66\n*E\n*S KotlinDebug\n*F\n+ 1 GKodeinBuilder.kt\norg/kodein/di/generic/GKodeinBuilderKt\n*L\n17#1:57\n37#1:61\n45#1:62\n50#1:65\n55#1:66\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u0015\u0010\u0000\u001a\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\u0086\u0008\u001a*\u0010\u0004\u001a\u00020\u0005*\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\nH\u0086\u0008\u00a2\u0006\u0002\u0010\u000b\u001a<\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u000c\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0008*\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\nH\u0086\u0008\u00a2\u0006\u0002\u0010\r\u001a%\u0010\u000e\u001a\u00020\u000f\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0008*\u00020\u00032\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0086\u0008\u001a\u0015\u0010\u0010\u001a\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\u0086\u0008\u001a&\u0010\u0011\u001a\u00020\u0012\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0008*\u00020\u00132\u0006\u0010\u0014\u001a\u0002H\u0002H\u0086\u000c\u00a2\u0006\u0002\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "argument",
        "Lorg/kodein/di/SearchDSL$Spec;",
        "T",
        "Lorg/kodein/di/SearchDSL;",
        "bind",
        "Lorg/kodein/di/Kodein$Builder$DirectBinder;",
        "Lorg/kodein/di/Kodein$Builder;",
        "tag",
        "",
        "overrides",
        "",
        "(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;)Lorg/kodein/di/Kodein$Builder$DirectBinder;",
        "Lorg/kodein/di/Kodein$Builder$TypeBinder;",
        "(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;)Lorg/kodein/di/Kodein$Builder$TypeBinder;",
        "binding",
        "Lorg/kodein/di/SearchDSL$Binding;",
        "context",
        "with",
        "",
        "Lorg/kodein/di/Kodein$Builder$ConstantBinder;",
        "value",
        "(Lorg/kodein/di/Kodein$Builder$ConstantBinder;Ljava/lang/Object;)V",
        "kodein-di-generic-jvm"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public static final synthetic argument(Lorg/kodein/di/SearchDSL;)Lorg/kodein/di/SearchDSL$Spec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/SearchDSL;",
            ")",
            "Lorg/kodein/di/SearchDSL$Spec;"
        }
    .end annotation

    const-string v0, "$this$argument"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lorg/kodein/di/generic/GKodeinBuilderKt$argument$$inlined$generic$1;

    invoke-direct {v0}, Lorg/kodein/di/generic/GKodeinBuilderKt$argument$$inlined$generic$1;-><init>()V

    check-cast v0, Lorg/kodein/di/TypeReference;

    invoke-static {v0}, Lorg/kodein/di/TypesKt;->TT(Lorg/kodein/di/TypeReference;)Lorg/kodein/di/TypeToken;

    move-result-object v0

    .line 55
    invoke-virtual {p0, v0}, Lorg/kodein/di/SearchDSL;->Argument(Lorg/kodein/di/TypeToken;)Lorg/kodein/di/SearchDSL$Spec;

    move-result-object p0

    return-object p0
.end method

.method public static final bind(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;)Lorg/kodein/di/Kodein$Builder$DirectBinder;
    .locals 1

    const-string v0, "$this$bind"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-interface {p0, p1, p2}, Lorg/kodein/di/Kodein$Builder;->Bind(Ljava/lang/Object;Ljava/lang/Boolean;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic bind(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;)Lorg/kodein/di/Kodein$Builder$TypeBinder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/Kodein$Builder;",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ")",
            "Lorg/kodein/di/Kodein$Builder$TypeBinder<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$this$bind"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lorg/kodein/di/generic/GKodeinBuilderKt$bind$$inlined$generic$1;

    invoke-direct {v0}, Lorg/kodein/di/generic/GKodeinBuilderKt$bind$$inlined$generic$1;-><init>()V

    check-cast v0, Lorg/kodein/di/TypeReference;

    invoke-static {v0}, Lorg/kodein/di/TypesKt;->TT(Lorg/kodein/di/TypeReference;)Lorg/kodein/di/TypeToken;

    move-result-object v0

    .line 17
    invoke-interface {p0, v0, p1, p2}, Lorg/kodein/di/Kodein$Builder;->Bind(Lorg/kodein/di/TypeToken;Ljava/lang/Object;Ljava/lang/Boolean;)Lorg/kodein/di/Kodein$Builder$TypeBinder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 27
    move-object p2, v0

    check-cast p2, Ljava/lang/Boolean;

    :cond_1
    const-string p3, "$this$bind"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-interface {p0, p1, p2}, Lorg/kodein/di/Kodein$Builder;->Bind(Ljava/lang/Object;Ljava/lang/Boolean;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$TypeBinder;
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 17
    move-object p2, v0

    check-cast p2, Ljava/lang/Boolean;

    :cond_1
    const-string p3, "$this$bind"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance p3, Lorg/kodein/di/generic/GKodeinBuilderKt$bind$$inlined$generic$2;

    invoke-direct {p3}, Lorg/kodein/di/generic/GKodeinBuilderKt$bind$$inlined$generic$2;-><init>()V

    check-cast p3, Lorg/kodein/di/TypeReference;

    invoke-static {p3}, Lorg/kodein/di/TypesKt;->TT(Lorg/kodein/di/TypeReference;)Lorg/kodein/di/TypeToken;

    move-result-object p3

    .line 58
    invoke-interface {p0, p3, p1, p2}, Lorg/kodein/di/Kodein$Builder;->Bind(Lorg/kodein/di/TypeToken;Ljava/lang/Object;Ljava/lang/Boolean;)Lorg/kodein/di/Kodein$Builder$TypeBinder;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic binding(Lorg/kodein/di/SearchDSL;Ljava/lang/Object;)Lorg/kodein/di/SearchDSL$Binding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/SearchDSL;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/kodein/di/SearchDSL$Binding;"
        }
    .end annotation

    const-string v0, "$this$binding"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance p0, Lorg/kodein/di/generic/GKodeinBuilderKt$binding$$inlined$generic$1;

    invoke-direct {p0}, Lorg/kodein/di/generic/GKodeinBuilderKt$binding$$inlined$generic$1;-><init>()V

    check-cast p0, Lorg/kodein/di/TypeReference;

    invoke-static {p0}, Lorg/kodein/di/TypesKt;->TT(Lorg/kodein/di/TypeReference;)Lorg/kodein/di/TypeToken;

    move-result-object p0

    .line 45
    new-instance v0, Lorg/kodein/di/SearchDSL$Binding;

    invoke-direct {v0, p0, p1}, Lorg/kodein/di/SearchDSL$Binding;-><init>(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static synthetic binding$default(Lorg/kodein/di/SearchDSL;Ljava/lang/Object;ILjava/lang/Object;)Lorg/kodein/di/SearchDSL$Binding;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    const-string p2, "$this$binding"

    .line 45
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance p0, Lorg/kodein/di/generic/GKodeinBuilderKt$binding$$inlined$generic$2;

    invoke-direct {p0}, Lorg/kodein/di/generic/GKodeinBuilderKt$binding$$inlined$generic$2;-><init>()V

    check-cast p0, Lorg/kodein/di/TypeReference;

    invoke-static {p0}, Lorg/kodein/di/TypesKt;->TT(Lorg/kodein/di/TypeReference;)Lorg/kodein/di/TypeToken;

    move-result-object p0

    .line 63
    new-instance p2, Lorg/kodein/di/SearchDSL$Binding;

    invoke-direct {p2, p0, p1}, Lorg/kodein/di/SearchDSL$Binding;-><init>(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)V

    return-object p2
.end method

.method public static final synthetic context(Lorg/kodein/di/SearchDSL;)Lorg/kodein/di/SearchDSL$Spec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/SearchDSL;",
            ")",
            "Lorg/kodein/di/SearchDSL$Spec;"
        }
    .end annotation

    const-string v0, "$this$context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lorg/kodein/di/generic/GKodeinBuilderKt$context$$inlined$generic$1;

    invoke-direct {v0}, Lorg/kodein/di/generic/GKodeinBuilderKt$context$$inlined$generic$1;-><init>()V

    check-cast v0, Lorg/kodein/di/TypeReference;

    invoke-static {v0}, Lorg/kodein/di/TypesKt;->TT(Lorg/kodein/di/TypeReference;)Lorg/kodein/di/TypeToken;

    move-result-object v0

    .line 50
    invoke-virtual {p0, v0}, Lorg/kodein/di/SearchDSL;->Context(Lorg/kodein/di/TypeToken;)Lorg/kodein/di/SearchDSL$Spec;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic with(Lorg/kodein/di/Kodein$Builder$ConstantBinder;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/Kodein$Builder$ConstantBinder;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "$this$with"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lorg/kodein/di/generic/GKodeinBuilderKt$with$$inlined$generic$1;

    invoke-direct {v0}, Lorg/kodein/di/generic/GKodeinBuilderKt$with$$inlined$generic$1;-><init>()V

    check-cast v0, Lorg/kodein/di/TypeReference;

    invoke-static {v0}, Lorg/kodein/di/TypesKt;->TT(Lorg/kodein/di/TypeReference;)Lorg/kodein/di/TypeToken;

    move-result-object v0

    .line 37
    invoke-interface {p0, v0, p1}, Lorg/kodein/di/Kodein$Builder$ConstantBinder;->With(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)V

    return-void
.end method

.class public Lorg/kodein/di/internal/KodeinImpl;
.super Ljava/lang/Object;
.source "KodeinImpl.kt"

# interfaces
.implements Lorg/kodein/di/Kodein;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/kodein/di/internal/KodeinImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKodeinImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KodeinImpl.kt\norg/kodein/di/internal/KodeinImpl\n*L\n1#1,48:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0010\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0017\u0008\u0012\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B*\u0008\u0016\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005\u0012\u0017\u0010\u0008\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t\u00a2\u0006\u0002\u0008\u000c\u00a2\u0006\u0002\u0010\rB\u000f\u0008\u0000\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0002\u0010\u0010R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0011\u001a\u00020\u00128FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Lorg/kodein/di/internal/KodeinImpl;",
        "Lorg/kodein/di/Kodein;",
        "builder",
        "Lorg/kodein/di/internal/KodeinMainBuilderImpl;",
        "runCallbacks",
        "",
        "(Lorg/kodein/di/internal/KodeinMainBuilderImpl;Z)V",
        "allowSilentOverride",
        "init",
        "Lkotlin/Function1;",
        "Lorg/kodein/di/Kodein$MainBuilder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(ZLkotlin/jvm/functions/Function1;)V",
        "_container",
        "Lorg/kodein/di/internal/KodeinContainerImpl;",
        "(Lorg/kodein/di/internal/KodeinContainerImpl;)V",
        "container",
        "Lorg/kodein/di/KodeinContainer;",
        "getContainer",
        "()Lorg/kodein/di/KodeinContainer;",
        "container$delegate",
        "Lkotlin/Lazy;",
        "Companion",
        "kodein-di-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lorg/kodein/di/internal/KodeinImpl$Companion;


# instance fields
.field private final _container:Lorg/kodein/di/internal/KodeinContainerImpl;

.field private final container$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lorg/kodein/di/internal/KodeinImpl;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "container"

    const-string v4, "getContainer()Lorg/kodein/di/KodeinContainer;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lorg/kodein/di/internal/KodeinImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lorg/kodein/di/internal/KodeinImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/kodein/di/internal/KodeinImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/kodein/di/internal/KodeinImpl;->Companion:Lorg/kodein/di/internal/KodeinImpl$Companion;

    return-void
.end method

.method public constructor <init>(Lorg/kodein/di/internal/KodeinContainerImpl;)V
    .locals 1

    const-string v0, "_container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/kodein/di/internal/KodeinImpl;->_container:Lorg/kodein/di/internal/KodeinContainerImpl;

    .line 30
    new-instance p1, Lorg/kodein/di/internal/KodeinImpl$container$2;

    invoke-direct {p1, p0}, Lorg/kodein/di/internal/KodeinImpl$container$2;-><init>(Lorg/kodein/di/internal/KodeinImpl;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/kodein/di/internal/KodeinImpl;->container$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>(Lorg/kodein/di/internal/KodeinMainBuilderImpl;Z)V
    .locals 3

    .line 17
    new-instance v0, Lorg/kodein/di/internal/KodeinContainerImpl;

    invoke-virtual {p1}, Lorg/kodein/di/internal/KodeinMainBuilderImpl;->getContainerBuilder()Lorg/kodein/di/internal/KodeinContainerBuilderImpl;

    move-result-object v1

    invoke-virtual {p1}, Lorg/kodein/di/internal/KodeinMainBuilderImpl;->getExternalSources()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lorg/kodein/di/internal/KodeinMainBuilderImpl;->getFullDescriptionOnError()Z

    move-result p1

    invoke-direct {v0, v1, v2, p1, p2}, Lorg/kodein/di/internal/KodeinContainerImpl;-><init>(Lorg/kodein/di/internal/KodeinContainerBuilderImpl;Ljava/util/List;ZZ)V

    invoke-direct {p0, v0}, Lorg/kodein/di/internal/KodeinImpl;-><init>(Lorg/kodein/di/internal/KodeinContainerImpl;)V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/kodein/di/internal/KodeinMainBuilderImpl;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lorg/kodein/di/internal/KodeinImpl;-><init>(Lorg/kodein/di/internal/KodeinMainBuilderImpl;Z)V

    return-void
.end method

.method public constructor <init>(ZLkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lorg/kodein/di/Kodein$MainBuilder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "init"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object v0, Lorg/kodein/di/internal/KodeinImpl;->Companion:Lorg/kodein/di/internal/KodeinImpl$Companion;

    invoke-static {v0, p1, p2}, Lorg/kodein/di/internal/KodeinImpl$Companion;->access$newBuilder(Lorg/kodein/di/internal/KodeinImpl$Companion;ZLkotlin/jvm/functions/Function1;)Lorg/kodein/di/internal/KodeinMainBuilderImpl;

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lorg/kodein/di/internal/KodeinImpl;-><init>(Lorg/kodein/di/internal/KodeinMainBuilderImpl;Z)V

    return-void
.end method

.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 19
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/kodein/di/internal/KodeinImpl;-><init>(ZLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$get_container$p(Lorg/kodein/di/internal/KodeinImpl;)Lorg/kodein/di/internal/KodeinContainerImpl;
    .locals 0

    .line 14
    iget-object p0, p0, Lorg/kodein/di/internal/KodeinImpl;->_container:Lorg/kodein/di/internal/KodeinContainerImpl;

    return-object p0
.end method


# virtual methods
.method public final getContainer()Lorg/kodein/di/KodeinContainer;
    .locals 3

    iget-object v0, p0, Lorg/kodein/di/internal/KodeinImpl;->container$delegate:Lkotlin/Lazy;

    sget-object v1, Lorg/kodein/di/internal/KodeinImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/kodein/di/KodeinContainer;

    return-object v0
.end method

.method public getKodein()Lorg/kodein/di/Kodein;
    .locals 1

    .line 14
    invoke-static {p0}, Lorg/kodein/di/Kodein$DefaultImpls;->getKodein(Lorg/kodein/di/Kodein;)Lorg/kodein/di/Kodein;

    move-result-object v0

    return-object v0
.end method

.method public getKodeinContext()Lorg/kodein/di/KodeinContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kodein/di/KodeinContext<",
            "*>;"
        }
    .end annotation

    .line 14
    invoke-static {p0}, Lorg/kodein/di/Kodein$DefaultImpls;->getKodeinContext(Lorg/kodein/di/Kodein;)Lorg/kodein/di/KodeinContext;

    move-result-object v0

    return-object v0
.end method

.method public getKodeinTrigger()Lorg/kodein/di/KodeinTrigger;
    .locals 1

    .line 14
    invoke-static {p0}, Lorg/kodein/di/Kodein$DefaultImpls;->getKodeinTrigger(Lorg/kodein/di/Kodein;)Lorg/kodein/di/KodeinTrigger;

    move-result-object v0

    return-object v0
.end method

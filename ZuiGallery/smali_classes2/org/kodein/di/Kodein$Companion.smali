.class public final Lorg/kodein/di/Kodein$Companion;
.super Ljava/lang/Object;
.source "Kodein.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/kodein/di/Kodein;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J)\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00042\u0017\u0010\u000c\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r\u00a2\u0006\u0002\u0008\u0010J,\u0010\u0011\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00042\u0017\u0010\u000c\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r\u00a2\u0006\u0002\u0008\u0010H\u0086\u0002J)\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00042\u0017\u0010\u000c\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r\u00a2\u0006\u0002\u0008\u0010J;\u0010\u0015\u001a\u0014\u0012\u0004\u0012\u00020\u0012\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u00170\u00162\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00042\u0017\u0010\u000c\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r\u00a2\u0006\u0002\u0008\u0010R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0018"
    }
    d2 = {
        "Lorg/kodein/di/Kodein$Companion;",
        "",
        "()V",
        "defaultFullDescriptionOnError",
        "",
        "getDefaultFullDescriptionOnError",
        "()Z",
        "setDefaultFullDescriptionOnError",
        "(Z)V",
        "direct",
        "Lorg/kodein/di/DKodein;",
        "allowSilentOverride",
        "init",
        "Lkotlin/Function1;",
        "Lorg/kodein/di/Kodein$MainBuilder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "invoke",
        "Lorg/kodein/di/Kodein;",
        "lazy",
        "Lorg/kodein/di/LazyKodein;",
        "withDelayedCallbacks",
        "Lkotlin/Pair;",
        "Lkotlin/Function0;",
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
.field static final synthetic $$INSTANCE:Lorg/kodein/di/Kodein$Companion;

.field private static defaultFullDescriptionOnError:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 429
    new-instance v0, Lorg/kodein/di/Kodein$Companion;

    invoke-direct {v0}, Lorg/kodein/di/Kodein$Companion;-><init>()V

    sput-object v0, Lorg/kodein/di/Kodein$Companion;->$$INSTANCE:Lorg/kodein/di/Kodein$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic direct$default(Lorg/kodein/di/Kodein$Companion;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lorg/kodein/di/DKodein;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 456
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/kodein/di/Kodein$Companion;->direct(ZLkotlin/jvm/functions/Function1;)Lorg/kodein/di/DKodein;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic invoke$default(Lorg/kodein/di/Kodein$Companion;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lorg/kodein/di/Kodein;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 438
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/kodein/di/Kodein$Companion;->invoke(ZLkotlin/jvm/functions/Function1;)Lorg/kodein/di/Kodein;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lazy$default(Lorg/kodein/di/Kodein$Companion;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lorg/kodein/di/LazyKodein;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 447
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/kodein/di/Kodein$Companion;->lazy(ZLkotlin/jvm/functions/Function1;)Lorg/kodein/di/LazyKodein;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic withDelayedCallbacks$default(Lorg/kodein/di/Kodein$Companion;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlin/Pair;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 471
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/kodein/di/Kodein$Companion;->withDelayedCallbacks(ZLkotlin/jvm/functions/Function1;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final direct(ZLkotlin/jvm/functions/Function1;)Lorg/kodein/di/DKodein;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lorg/kodein/di/Kodein$MainBuilder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lorg/kodein/di/DKodein;"
        }
    .end annotation

    const-string v0, "init"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    new-instance v0, Lorg/kodein/di/internal/KodeinImpl;

    invoke-direct {v0, p1, p2}, Lorg/kodein/di/internal/KodeinImpl;-><init>(ZLkotlin/jvm/functions/Function1;)V

    check-cast v0, Lorg/kodein/di/KodeinAware;

    invoke-static {v0}, Lorg/kodein/di/KodeinAwareKt;->getDirect(Lorg/kodein/di/KodeinAware;)Lorg/kodein/di/DKodein;

    move-result-object p1

    return-object p1
.end method

.method public final getDefaultFullDescriptionOnError()Z
    .locals 1

    .line 473
    sget-boolean v0, Lorg/kodein/di/Kodein$Companion;->defaultFullDescriptionOnError:Z

    return v0
.end method

.method public final invoke(ZLkotlin/jvm/functions/Function1;)Lorg/kodein/di/Kodein;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lorg/kodein/di/Kodein$MainBuilder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lorg/kodein/di/Kodein;"
        }
    .end annotation

    const-string v0, "init"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 438
    new-instance v0, Lorg/kodein/di/internal/KodeinImpl;

    invoke-direct {v0, p1, p2}, Lorg/kodein/di/internal/KodeinImpl;-><init>(ZLkotlin/jvm/functions/Function1;)V

    check-cast v0, Lorg/kodein/di/Kodein;

    return-object v0
.end method

.method public final lazy(ZLkotlin/jvm/functions/Function1;)Lorg/kodein/di/LazyKodein;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lorg/kodein/di/Kodein$MainBuilder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lorg/kodein/di/LazyKodein;"
        }
    .end annotation

    const-string v0, "init"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 447
    new-instance v0, Lorg/kodein/di/LazyKodein;

    new-instance v1, Lorg/kodein/di/Kodein$Companion$lazy$1;

    invoke-direct {v1, p1, p2}, Lorg/kodein/di/Kodein$Companion$lazy$1;-><init>(ZLkotlin/jvm/functions/Function1;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v1}, Lorg/kodein/di/LazyKodein;-><init>(Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method public final setDefaultFullDescriptionOnError(Z)V
    .locals 0

    .line 473
    sput-boolean p1, Lorg/kodein/di/Kodein$Companion;->defaultFullDescriptionOnError:Z

    return-void
.end method

.method public final withDelayedCallbacks(ZLkotlin/jvm/functions/Function1;)Lkotlin/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lorg/kodein/di/Kodein$MainBuilder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlin/Pair<",
            "Lorg/kodein/di/Kodein;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    const-string v0, "init"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 471
    sget-object v0, Lorg/kodein/di/internal/KodeinImpl;->Companion:Lorg/kodein/di/internal/KodeinImpl$Companion;

    invoke-virtual {v0, p1, p2}, Lorg/kodein/di/internal/KodeinImpl$Companion;->withDelayedCallbacks(ZLkotlin/jvm/functions/Function1;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

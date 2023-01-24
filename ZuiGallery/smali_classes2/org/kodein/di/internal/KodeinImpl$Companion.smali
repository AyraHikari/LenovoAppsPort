.class public final Lorg/kodein/di/internal/KodeinImpl$Companion;
.super Ljava/lang/Object;
.source "KodeinImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/kodein/di/internal/KodeinImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKodeinImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KodeinImpl.kt\norg/kodein/di/internal/KodeinImpl$Companion\n*L\n1#1,48:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J+\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0017\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008\u00a2\u0006\u0002\u0008\u000bH\u0002J;\u0010\u000c\u001a\u0014\u0012\u0004\u0012\u00020\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u000f0\r2\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0017\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008\u00a2\u0006\u0002\u0008\u000b\u00a8\u0006\u0010"
    }
    d2 = {
        "Lorg/kodein/di/internal/KodeinImpl$Companion;",
        "",
        "()V",
        "newBuilder",
        "Lorg/kodein/di/internal/KodeinMainBuilderImpl;",
        "allowSilentOverride",
        "",
        "init",
        "Lkotlin/Function1;",
        "Lorg/kodein/di/Kodein$MainBuilder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "withDelayedCallbacks",
        "Lkotlin/Pair;",
        "Lorg/kodein/di/Kodein;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lorg/kodein/di/internal/KodeinImpl$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$newBuilder(Lorg/kodein/di/internal/KodeinImpl$Companion;ZLkotlin/jvm/functions/Function1;)Lorg/kodein/di/internal/KodeinMainBuilderImpl;
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lorg/kodein/di/internal/KodeinImpl$Companion;->newBuilder(ZLkotlin/jvm/functions/Function1;)Lorg/kodein/di/internal/KodeinMainBuilderImpl;

    move-result-object p0

    return-object p0
.end method

.method private final newBuilder(ZLkotlin/jvm/functions/Function1;)Lorg/kodein/di/internal/KodeinMainBuilderImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lorg/kodein/di/Kodein$MainBuilder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lorg/kodein/di/internal/KodeinMainBuilderImpl;"
        }
    .end annotation

    .line 22
    new-instance v0, Lorg/kodein/di/internal/KodeinMainBuilderImpl;

    invoke-direct {v0, p1}, Lorg/kodein/di/internal/KodeinMainBuilderImpl;-><init>(Z)V

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic newBuilder$default(Lorg/kodein/di/internal/KodeinImpl$Companion;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lorg/kodein/di/internal/KodeinMainBuilderImpl;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 22
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/kodein/di/internal/KodeinImpl$Companion;->newBuilder(ZLkotlin/jvm/functions/Function1;)Lorg/kodein/di/internal/KodeinMainBuilderImpl;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic withDelayedCallbacks$default(Lorg/kodein/di/internal/KodeinImpl$Companion;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlin/Pair;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 24
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/kodein/di/internal/KodeinImpl$Companion;->withDelayedCallbacks(ZLkotlin/jvm/functions/Function1;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final withDelayedCallbacks(ZLkotlin/jvm/functions/Function1;)Lkotlin/Pair;
    .locals 2
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

    .line 25
    new-instance v0, Lorg/kodein/di/internal/KodeinImpl;

    move-object v1, p0

    check-cast v1, Lorg/kodein/di/internal/KodeinImpl$Companion;

    invoke-direct {v1, p1, p2}, Lorg/kodein/di/internal/KodeinImpl$Companion;->newBuilder(ZLkotlin/jvm/functions/Function1;)Lorg/kodein/di/internal/KodeinMainBuilderImpl;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/kodein/di/internal/KodeinImpl;-><init>(Lorg/kodein/di/internal/KodeinMainBuilderImpl;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 26
    new-instance p1, Lorg/kodein/di/internal/KodeinImpl$Companion$withDelayedCallbacks$1;

    invoke-direct {p1, v0}, Lorg/kodein/di/internal/KodeinImpl$Companion$withDelayedCallbacks$1;-><init>(Lorg/kodein/di/internal/KodeinImpl;)V

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

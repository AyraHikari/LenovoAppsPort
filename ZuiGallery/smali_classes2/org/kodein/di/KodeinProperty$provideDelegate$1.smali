.class final Lorg/kodein/di/KodeinProperty$provideDelegate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "properties.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/kodein/di/KodeinProperty;->provideDelegate(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lkotlin/Lazy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "TV;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0004\n\u0002\u0008\u0004\u0010\u0000\u001a\u0002H\u0001\"\u0006\u0008\u0000\u0010\u0001 \u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "V",
        "invoke",
        "()Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $prop:Lkotlin/reflect/KProperty;

.field final synthetic $receiver:Ljava/lang/Object;

.field final synthetic this$0:Lorg/kodein/di/KodeinProperty;


# direct methods
.method constructor <init>(Lorg/kodein/di/KodeinProperty;Ljava/lang/Object;Lkotlin/reflect/KProperty;)V
    .locals 0

    iput-object p1, p0, Lorg/kodein/di/KodeinProperty$provideDelegate$1;->this$0:Lorg/kodein/di/KodeinProperty;

    iput-object p2, p0, Lorg/kodein/di/KodeinProperty$provideDelegate$1;->$receiver:Ljava/lang/Object;

    iput-object p3, p0, Lorg/kodein/di/KodeinProperty$provideDelegate$1;->$prop:Lkotlin/reflect/KProperty;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lorg/kodein/di/KodeinProperty$provideDelegate$1;->$receiver:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/kodein/di/KodeinProperty$provideDelegate$1;->this$0:Lorg/kodein/di/KodeinProperty;

    invoke-virtual {v0}, Lorg/kodein/di/KodeinProperty;->getOriginalContext()Lorg/kodein/di/KodeinContext;

    move-result-object v0

    invoke-static {}, Lorg/kodein/di/KodeinAwareKt;->getAnyKodeinContext()Lorg/kodein/di/KodeinContext;

    move-result-object v1

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/kodein/di/KodeinContext;->Companion:Lorg/kodein/di/KodeinContext$Companion;

    iget-object v1, p0, Lorg/kodein/di/KodeinProperty$provideDelegate$1;->$receiver:Ljava/lang/Object;

    invoke-static {v1}, Lorg/kodein/di/TypesKt;->TTOf(Ljava/lang/Object;)Lorg/kodein/di/TypeToken;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/kodein/di/KodeinProperty$provideDelegate$1;->$receiver:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/kodein/di/KodeinContext$Companion;->invoke(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Lorg/kodein/di/KodeinContext;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type org.kodein.di.TypeToken<in kotlin.Any>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/kodein/di/KodeinProperty$provideDelegate$1;->this$0:Lorg/kodein/di/KodeinProperty;

    invoke-virtual {v0}, Lorg/kodein/di/KodeinProperty;->getOriginalContext()Lorg/kodein/di/KodeinContext;

    move-result-object v0

    .line 42
    :goto_0
    iget-object v1, p0, Lorg/kodein/di/KodeinProperty$provideDelegate$1;->this$0:Lorg/kodein/di/KodeinProperty;

    invoke-static {v1}, Lorg/kodein/di/KodeinProperty;->access$getGet$p(Lorg/kodein/di/KodeinProperty;)Lkotlin/jvm/functions/Function2;

    move-result-object v1

    iget-object v2, p0, Lorg/kodein/di/KodeinProperty$provideDelegate$1;->$prop:Lkotlin/reflect/KProperty;

    invoke-interface {v2}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

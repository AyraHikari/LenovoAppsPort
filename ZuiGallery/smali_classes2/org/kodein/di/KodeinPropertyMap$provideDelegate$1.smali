.class final Lorg/kodein/di/KodeinPropertyMap$provideDelegate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "properties.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/kodein/di/KodeinPropertyMap;->provideDelegate(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lkotlin/Lazy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "TO;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0004\n\u0002\u0008\u0005\u0010\u0000\u001a\u0002H\u0001\"\u0006\u0008\u0000\u0010\u0002 \u0000\"\u0006\u0008\u0001\u0010\u0001 \u0001H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "O",
        "I",
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

.field final synthetic this$0:Lorg/kodein/di/KodeinPropertyMap;


# direct methods
.method constructor <init>(Lorg/kodein/di/KodeinPropertyMap;Ljava/lang/Object;Lkotlin/reflect/KProperty;)V
    .locals 0

    iput-object p1, p0, Lorg/kodein/di/KodeinPropertyMap$provideDelegate$1;->this$0:Lorg/kodein/di/KodeinPropertyMap;

    iput-object p2, p0, Lorg/kodein/di/KodeinPropertyMap$provideDelegate$1;->$receiver:Ljava/lang/Object;

    iput-object p3, p0, Lorg/kodein/di/KodeinPropertyMap$provideDelegate$1;->$prop:Lkotlin/reflect/KProperty;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lorg/kodein/di/KodeinPropertyMap$provideDelegate$1;->this$0:Lorg/kodein/di/KodeinPropertyMap;

    invoke-static {v0}, Lorg/kodein/di/KodeinPropertyMap;->access$getMap$p(Lorg/kodein/di/KodeinPropertyMap;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    iget-object v1, p0, Lorg/kodein/di/KodeinPropertyMap$provideDelegate$1;->this$0:Lorg/kodein/di/KodeinPropertyMap;

    invoke-static {v1}, Lorg/kodein/di/KodeinPropertyMap;->access$getBase$p(Lorg/kodein/di/KodeinPropertyMap;)Lorg/kodein/di/KodeinProperty;

    move-result-object v1

    iget-object v2, p0, Lorg/kodein/di/KodeinPropertyMap$provideDelegate$1;->$receiver:Ljava/lang/Object;

    iget-object v3, p0, Lorg/kodein/di/KodeinPropertyMap$provideDelegate$1;->$prop:Lkotlin/reflect/KProperty;

    invoke-virtual {v1, v2, v3}, Lorg/kodein/di/KodeinProperty;->provideDelegate(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lkotlin/Lazy;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

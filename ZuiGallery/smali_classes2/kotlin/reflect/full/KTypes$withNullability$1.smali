.class final Lkotlin/reflect/full/KTypes$withNullability$1;
.super Lkotlin/jvm/internal/Lambda;
.source "KTypes.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/full/KTypes;->withNullability(Lkotlin/reflect/KType;Z)Lkotlin/reflect/KType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/reflect/Type;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Ljava/lang/reflect/Type;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $this_withNullability:Lkotlin/reflect/KType;


# direct methods
.method constructor <init>(Lkotlin/reflect/KType;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/full/KTypes$withNullability$1;->$this_withNullability:Lkotlin/reflect/KType;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lkotlin/reflect/full/KTypes$withNullability$1;->invoke()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/reflect/Type;
    .locals 1

    .line 32
    iget-object v0, p0, Lkotlin/reflect/full/KTypes$withNullability$1;->$this_withNullability:Lkotlin/reflect/KType;

    check-cast v0, Lkotlin/reflect/jvm/internal/KTypeImpl;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KTypeImpl;->getJavaType$kotlin_reflection()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

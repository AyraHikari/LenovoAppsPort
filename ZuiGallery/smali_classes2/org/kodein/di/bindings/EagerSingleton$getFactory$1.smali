.class final Lorg/kodein/di/bindings/EagerSingleton$getFactory$1;
.super Lkotlin/jvm/internal/Lambda;
.source "standardBindings.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/kodein/di/bindings/EagerSingleton;->getFactory(Lorg/kodein/di/bindings/BindingKodein;)Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/Unit;",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nstandardBindings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 standardBindings.kt\norg/kodein/di/bindings/EagerSingleton$getFactory$1\n+ 2 concurrent.kt\norg/kodein/di/internal/ConcurrentKt\n+ 3 lang.kt\norg/kodein/di/internal/LangKt\n*L\n1#1,198:1\n7#2,5:199\n12#2,3:206\n17#2:210\n11#3,2:204\n14#3:209\n*E\n*S KotlinDebug\n*F\n+ 1 standardBindings.kt\norg/kodein/di/bindings/EagerSingleton$getFactory$1\n*L\n153#1,5:199\n153#1,3:206\n153#1:210\n153#1,2:204\n153#1:209\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "T",
        "",
        "<anonymous parameter 0>",
        "",
        "invoke",
        "(Lkotlin/Unit;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $kodein:Lorg/kodein/di/bindings/BindingKodein;

.field final synthetic this$0:Lorg/kodein/di/bindings/EagerSingleton;


# direct methods
.method constructor <init>(Lorg/kodein/di/bindings/EagerSingleton;Lorg/kodein/di/bindings/BindingKodein;)V
    .locals 0

    iput-object p1, p0, Lorg/kodein/di/bindings/EagerSingleton$getFactory$1;->this$0:Lorg/kodein/di/bindings/EagerSingleton;

    iput-object p2, p0, Lorg/kodein/di/bindings/EagerSingleton$getFactory$1;->$kodein:Lorg/kodein/di/bindings/BindingKodein;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 144
    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lorg/kodein/di/bindings/EagerSingleton$getFactory$1;->invoke(Lkotlin/Unit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/Unit;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Unit;",
            ")TT;"
        }
    .end annotation

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    iget-object p1, p0, Lorg/kodein/di/bindings/EagerSingleton$getFactory$1;->this$0:Lorg/kodein/di/bindings/EagerSingleton;

    invoke-static {p1}, Lorg/kodein/di/bindings/EagerSingleton;->access$get_lock$p(Lorg/kodein/di/bindings/EagerSingleton;)Ljava/lang/Object;

    move-result-object p1

    .line 155
    iget-object v0, p0, Lorg/kodein/di/bindings/EagerSingleton$getFactory$1;->this$0:Lorg/kodein/di/bindings/EagerSingleton;

    invoke-static {v0}, Lorg/kodein/di/bindings/EagerSingleton;->access$get_instance$p(Lorg/kodein/di/bindings/EagerSingleton;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_2

    invoke-static {v0}, Lorg/kodein/di/bindings/EagerSingleton;->access$get_instance$p(Lorg/kodein/di/bindings/EagerSingleton;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    move-object v1, p1

    goto :goto_0

    .line 158
    :cond_1
    iget-object p1, p0, Lorg/kodein/di/bindings/EagerSingleton$getFactory$1;->this$0:Lorg/kodein/di/bindings/EagerSingleton;

    invoke-virtual {p1}, Lorg/kodein/di/bindings/EagerSingleton;->getCreator()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    new-instance v0, Lorg/kodein/di/bindings/NoArgBindingKodeinWrap;

    iget-object v1, p0, Lorg/kodein/di/bindings/EagerSingleton$getFactory$1;->$kodein:Lorg/kodein/di/bindings/BindingKodein;

    invoke-direct {v0, v1}, Lorg/kodein/di/bindings/NoArgBindingKodeinWrap;-><init>(Lorg/kodein/di/bindings/BindingKodein;)V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object p1, p0, Lorg/kodein/di/bindings/EagerSingleton$getFactory$1;->this$0:Lorg/kodein/di/bindings/EagerSingleton;

    invoke-static {p1, v1}, Lorg/kodein/di/bindings/EagerSingleton;->access$set_instance$p(Lorg/kodein/di/bindings/EagerSingleton;Ljava/lang/Object;)V

    goto :goto_0

    .line 209
    :cond_2
    monitor-enter p1

    .line 155
    :try_start_0
    invoke-static {v0}, Lorg/kodein/di/bindings/EagerSingleton;->access$get_instance$p(Lorg/kodein/di/bindings/EagerSingleton;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 158
    monitor-exit p1

    move-object v1, v0

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lorg/kodein/di/bindings/EagerSingleton$getFactory$1;->this$0:Lorg/kodein/di/bindings/EagerSingleton;

    invoke-virtual {v0}, Lorg/kodein/di/bindings/EagerSingleton;->getCreator()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    new-instance v1, Lorg/kodein/di/bindings/NoArgBindingKodeinWrap;

    iget-object v2, p0, Lorg/kodein/di/bindings/EagerSingleton$getFactory$1;->$kodein:Lorg/kodein/di/bindings/BindingKodein;

    invoke-direct {v1, v2}, Lorg/kodein/di/bindings/NoArgBindingKodeinWrap;-><init>(Lorg/kodein/di/bindings/BindingKodein;)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v0, p0, Lorg/kodein/di/bindings/EagerSingleton$getFactory$1;->this$0:Lorg/kodein/di/bindings/EagerSingleton;

    invoke-static {v0, v1}, Lorg/kodein/di/bindings/EagerSingleton;->access$set_instance$p(Lorg/kodein/di/bindings/EagerSingleton;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p1

    :goto_0
    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method

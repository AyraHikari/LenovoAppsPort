.class final Lorg/kodein/di/android/RetainedKt$retainedKodein$1;
.super Lkotlin/jvm/internal/Lambda;
.source "retained.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/kodein/di/android/RetainedKt;->retainedKodein(Landroid/app/Activity;ZLkotlin/jvm/functions/Function1;)Lkotlin/Lazy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/kodein/di/Kodein;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nretained.kt\nKotlin\n*S Kotlin\n*F\n+ 1 retained.kt\norg/kodein/di/android/RetainedKt$retainedKodein$1\n*L\n1#1,41:1\n*E\n"
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
        "Lorg/kodein/di/Kodein;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $allowSilentOverride:Z

.field final synthetic $init:Lkotlin/jvm/functions/Function1;

.field final synthetic $this_retainedKodein:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;ZLkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lorg/kodein/di/android/RetainedKt$retainedKodein$1;->$this_retainedKodein:Landroid/app/Activity;

    iput-boolean p2, p0, Lorg/kodein/di/android/RetainedKt$retainedKodein$1;->$allowSilentOverride:Z

    iput-object p3, p0, Lorg/kodein/di/android/RetainedKt$retainedKodein$1;->$init:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/kodein/di/android/RetainedKt$retainedKodein$1;->invoke()Lorg/kodein/di/Kodein;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/kodein/di/Kodein;
    .locals 4

    .line 32
    iget-object v0, p0, Lorg/kodein/di/android/RetainedKt$retainedKodein$1;->$this_retainedKodein:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "org.kodein.di.android.RetainedKodeinFragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    instance-of v2, v0, Lorg/kodein/di/android/RetainedKodeinFragment;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lorg/kodein/di/android/RetainedKodeinFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/kodein/di/android/RetainedKodeinFragment;->getKodein()Lorg/kodein/di/Kodein;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 34
    :cond_1
    sget-object v0, Lorg/kodein/di/Kodein;->Companion:Lorg/kodein/di/Kodein$Companion;

    iget-boolean v2, p0, Lorg/kodein/di/android/RetainedKt$retainedKodein$1;->$allowSilentOverride:Z

    iget-object v3, p0, Lorg/kodein/di/android/RetainedKt$retainedKodein$1;->$init:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v2, v3}, Lorg/kodein/di/Kodein$Companion;->invoke(ZLkotlin/jvm/functions/Function1;)Lorg/kodein/di/Kodein;

    move-result-object v0

    .line 35
    new-instance v2, Lorg/kodein/di/android/RetainedKodeinFragment;

    invoke-direct {v2}, Lorg/kodein/di/android/RetainedKodeinFragment;-><init>()V

    .line 36
    invoke-virtual {v2, v0}, Lorg/kodein/di/android/RetainedKodeinFragment;->setKodein(Lorg/kodein/di/Kodein;)V

    .line 37
    iget-object v3, p0, Lorg/kodein/di/android/RetainedKt$retainedKodein$1;->$this_retainedKodein:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    check-cast v2, Landroid/app/Fragment;

    invoke-virtual {v3, v2, v1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    return-object v0
.end method

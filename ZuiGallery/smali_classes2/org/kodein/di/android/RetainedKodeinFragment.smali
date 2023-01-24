.class public final Lorg/kodein/di/android/RetainedKodeinFragment;
.super Landroid/app/Fragment;
.source "retained.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Lorg/kodein/di/android/RetainedKodeinFragment;",
        "Landroid/app/Fragment;",
        "()V",
        "kodein",
        "Lorg/kodein/di/Kodein;",
        "getKodein",
        "()Lorg/kodein/di/Kodein;",
        "setKodein",
        "(Lorg/kodein/di/Kodein;)V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "kodein-di-framework-android-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private kodein:Lorg/kodein/di/Kodein;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getKodein()Lorg/kodein/di/Kodein;
    .locals 1

    .line 13
    iget-object v0, p0, Lorg/kodein/di/android/RetainedKodeinFragment;->kodein:Lorg/kodein/di/Kodein;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 16
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 18
    invoke-virtual {p0, p1}, Lorg/kodein/di/android/RetainedKodeinFragment;->setRetainInstance(Z)V

    return-void
.end method

.method public final setKodein(Lorg/kodein/di/Kodein;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lorg/kodein/di/android/RetainedKodeinFragment;->kodein:Lorg/kodein/di/Kodein;

    return-void
.end method

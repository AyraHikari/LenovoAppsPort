.class public interface abstract Lorg/kodein/di/bindings/KodeinBinding$Copier;
.super Ljava/lang/Object;
.source "KodeinBinding.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/kodein/di/bindings/KodeinBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Copier"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/kodein/di/bindings/KodeinBinding$Copier$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u0000 \t*\u0004\u0008\u0003\u0010\u0001*\u0004\u0008\u0004\u0010\u0002*\u0008\u0008\u0005\u0010\u0003*\u00020\u00042\u00020\u0004:\u0001\tJ\"\u0010\u0005\u001a\u0014\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u00050\u00062\u0006\u0010\u0007\u001a\u00020\u0008H&\u00a8\u0006\n"
    }
    d2 = {
        "Lorg/kodein/di/bindings/KodeinBinding$Copier;",
        "C",
        "A",
        "T",
        "",
        "copy",
        "Lorg/kodein/di/bindings/KodeinBinding;",
        "builder",
        "Lorg/kodein/di/KodeinContainer$Builder;",
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
.field public static final Companion:Lorg/kodein/di/bindings/KodeinBinding$Copier$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/kodein/di/bindings/KodeinBinding$Copier$Companion;->$$INSTANCE:Lorg/kodein/di/bindings/KodeinBinding$Copier$Companion;

    sput-object v0, Lorg/kodein/di/bindings/KodeinBinding$Copier;->Companion:Lorg/kodein/di/bindings/KodeinBinding$Copier$Companion;

    return-void
.end method


# virtual methods
.method public abstract copy(Lorg/kodein/di/KodeinContainer$Builder;)Lorg/kodein/di/bindings/KodeinBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/KodeinContainer$Builder;",
            ")",
            "Lorg/kodein/di/bindings/KodeinBinding<",
            "TC;TA;TT;>;"
        }
    .end annotation
.end method

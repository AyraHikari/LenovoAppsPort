.class public interface abstract Lorg/kodein/di/Kodein;
.super Ljava/lang/Object;
.source "Kodein.kt"

# interfaces
.implements Lorg/kodein/di/KodeinAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/kodein/di/Kodein$DependencyLoopException;,
        Lorg/kodein/di/Kodein$NotFoundException;,
        Lorg/kodein/di/Kodein$NoResultException;,
        Lorg/kodein/di/Kodein$OverridingException;,
        Lorg/kodein/di/Kodein$Key;,
        Lorg/kodein/di/Kodein$KodeinDsl;,
        Lorg/kodein/di/Kodein$BindBuilder;,
        Lorg/kodein/di/Kodein$Builder;,
        Lorg/kodein/di/Kodein$MainBuilder;,
        Lorg/kodein/di/Kodein$Module;,
        Lorg/kodein/di/Kodein$DefaultImpls;,
        Lorg/kodein/di/Kodein$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0008f\u0018\u0000 \u000b2\u00020\u0001:\u000b\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u00008VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0014"
    }
    d2 = {
        "Lorg/kodein/di/Kodein;",
        "Lorg/kodein/di/KodeinAware;",
        "container",
        "Lorg/kodein/di/KodeinContainer;",
        "getContainer",
        "()Lorg/kodein/di/KodeinContainer;",
        "kodein",
        "getKodein",
        "()Lorg/kodein/di/Kodein;",
        "BindBuilder",
        "Builder",
        "Companion",
        "DependencyLoopException",
        "Key",
        "KodeinDsl",
        "MainBuilder",
        "Module",
        "NoResultException",
        "NotFoundException",
        "OverridingException",
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
.field public static final Companion:Lorg/kodein/di/Kodein$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/kodein/di/Kodein$Companion;->$$INSTANCE:Lorg/kodein/di/Kodein$Companion;

    sput-object v0, Lorg/kodein/di/Kodein;->Companion:Lorg/kodein/di/Kodein$Companion;

    return-void
.end method


# virtual methods
.method public abstract getContainer()Lorg/kodein/di/KodeinContainer;
.end method

.method public abstract getKodein()Lorg/kodein/di/Kodein;
.end method

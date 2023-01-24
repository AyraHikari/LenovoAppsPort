.class public interface abstract Lorg/kodein/di/Kodein$MainBuilder;
.super Ljava/lang/Object;
.source "Kodein.kt"

# interfaces
.implements Lorg/kodein/di/Kodein$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/kodein/di/Kodein;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MainBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/kodein/di/Kodein$MainBuilder$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J$\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001bH&J$\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001bH&R.\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00038V@VX\u0097\u000e\u00a2\u0006\u0012\u0012\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u0018\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000cX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0018\u0010\u000f\u001a\u00020\u0010X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001e"
    }
    d2 = {
        "Lorg/kodein/di/Kodein$MainBuilder;",
        "Lorg/kodein/di/Kodein$Builder;",
        "value",
        "Lorg/kodein/di/bindings/ExternalSource;",
        "externalSource",
        "externalSource$annotations",
        "()V",
        "getExternalSource",
        "()Lorg/kodein/di/bindings/ExternalSource;",
        "setExternalSource",
        "(Lorg/kodein/di/bindings/ExternalSource;)V",
        "externalSources",
        "",
        "getExternalSources",
        "()Ljava/util/List;",
        "fullDescriptionOnError",
        "",
        "getFullDescriptionOnError",
        "()Z",
        "setFullDescriptionOnError",
        "(Z)V",
        "extend",
        "",
        "dkodein",
        "Lorg/kodein/di/DKodein;",
        "allowOverride",
        "copy",
        "Lorg/kodein/di/Copy;",
        "kodein",
        "Lorg/kodein/di/Kodein;",
        "kodein-di-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# virtual methods
.method public abstract extend(Lorg/kodein/di/DKodein;ZLorg/kodein/di/Copy;)V
.end method

.method public abstract extend(Lorg/kodein/di/Kodein;ZLorg/kodein/di/Copy;)V
.end method

.method public abstract getExternalSource()Lorg/kodein/di/bindings/ExternalSource;
.end method

.method public abstract getExternalSources()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/kodein/di/bindings/ExternalSource;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFullDescriptionOnError()Z
.end method

.method public abstract setExternalSource(Lorg/kodein/di/bindings/ExternalSource;)V
.end method

.method public abstract setFullDescriptionOnError(Z)V
.end method

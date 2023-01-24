.class public interface abstract Lorg/kodein/di/TypeToken;
.super Ljava/lang/Object;
.source "typeToken.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/kodein/di/TypeToken$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
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
        "\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008f\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0002H&J\u0008\u0010\u0006\u001a\u00020\u0007H&J\u0008\u0010\u0008\u001a\u00020\u0007H&J\u0019\u0010\t\u001a\u000e\u0012\n\u0008\u0001\u0012\u0006\u0012\u0002\u0008\u00030\u00000\nH&\u00a2\u0006\u0002\u0010\u000bJ\u0010\u0010\u000c\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0000H&J\u0012\u0010\r\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00000\u000eH&J\u0014\u0010\u000f\u001a\u00020\u00102\n\u0010\u0011\u001a\u0006\u0012\u0002\u0008\u00030\u0000H\u0016J\u0008\u0010\u0012\u001a\u00020\u0010H&J\u0008\u0010\u0013\u001a\u00020\u0010H&J\u0008\u0010\u0014\u001a\u00020\u0007H&J\u0008\u0010\u0015\u001a\u00020\u0007H&\u00a8\u0006\u0016"
    }
    d2 = {
        "Lorg/kodein/di/TypeToken;",
        "T",
        "",
        "checkIsReified",
        "",
        "disp",
        "fullDispString",
        "",
        "fullErasedDispString",
        "getGenericParameters",
        "",
        "()[Lorg/kodein/di/TypeToken;",
        "getRaw",
        "getSuper",
        "",
        "isAssignableFrom",
        "",
        "typeToken",
        "isGeneric",
        "isWildcard",
        "simpleDispString",
        "simpleErasedDispString",
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
.method public abstract checkIsReified(Ljava/lang/Object;)V
.end method

.method public abstract fullDispString()Ljava/lang/String;
.end method

.method public abstract fullErasedDispString()Ljava/lang/String;
.end method

.method public abstract getGenericParameters()[Lorg/kodein/di/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/kodein/di/TypeToken<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getRaw()Lorg/kodein/di/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kodein/di/TypeToken<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getSuper()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/kodein/di/TypeToken<",
            "*>;>;"
        }
    .end annotation
.end method

.method public abstract isAssignableFrom(Lorg/kodein/di/TypeToken;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/TypeToken<",
            "*>;)Z"
        }
    .end annotation
.end method

.method public abstract isGeneric()Z
.end method

.method public abstract isWildcard()Z
.end method

.method public abstract simpleDispString()Ljava/lang/String;
.end method

.method public abstract simpleErasedDispString()Ljava/lang/String;
.end method

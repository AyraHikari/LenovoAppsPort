.class public final Lorg/kodein/di/android/ActivityRetainedScope$MultiItem;
.super Lorg/kodein/di/android/ActivityRetainedScope;
.source "scopes.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/kodein/di/android/ActivityRetainedScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MultiItem"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lorg/kodein/di/android/ActivityRetainedScope$MultiItem;",
        "Lorg/kodein/di/android/ActivityRetainedScope;",
        "()V",
        "kodein-di-framework-android-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 30
    sget-object v0, Lorg/kodein/di/android/ActivityRetainedScope$RegistryType;->Standard:Lorg/kodein/di/android/ActivityRetainedScope$RegistryType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/kodein/di/android/ActivityRetainedScope;-><init>(Lorg/kodein/di/android/ActivityRetainedScope$RegistryType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/kodein/di/android/ActivityRetainedScope$MultiItem;-><init>()V

    return-void
.end method

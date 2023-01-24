.class public final Lorg/kodein/di/android/ActivityRetainedScope$Keys;
.super Ljava/lang/Object;
.source "scopes.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/kodein/di/android/ActivityRetainedScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Keys"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "Lorg/kodein/di/android/ActivityRetainedScope$Keys;",
        "",
        "()V",
        "registryTypeOrdinal",
        "",
        "kodein-di-framework-android-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/kodein/di/android/ActivityRetainedScope$Keys;

.field public static final registryTypeOrdinal:Ljava/lang/String; = "org.kodein.di.android.registryTypeOrdinal"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lorg/kodein/di/android/ActivityRetainedScope$Keys;

    invoke-direct {v0}, Lorg/kodein/di/android/ActivityRetainedScope$Keys;-><init>()V

    sput-object v0, Lorg/kodein/di/android/ActivityRetainedScope$Keys;->INSTANCE:Lorg/kodein/di/android/ActivityRetainedScope$Keys;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

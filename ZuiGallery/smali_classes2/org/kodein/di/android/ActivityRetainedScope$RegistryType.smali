.class abstract enum Lorg/kodein/di/android/ActivityRetainedScope$RegistryType;
.super Ljava/lang/Enum;
.source "scopes.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/kodein/di/android/ActivityRetainedScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RegistryType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/kodein/di/android/ActivityRetainedScope$RegistryType$Standard;,
        Lorg/kodein/di/android/ActivityRetainedScope$RegistryType$SingleItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/kodein/di/android/ActivityRetainedScope$RegistryType;",
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
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0082\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H&j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lorg/kodein/di/android/ActivityRetainedScope$RegistryType;",
        "",
        "(Ljava/lang/String;I)V",
        "new",
        "Lorg/kodein/di/bindings/ScopeRegistry;",
        "Standard",
        "SingleItem",
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
.field private static final synthetic $VALUES:[Lorg/kodein/di/android/ActivityRetainedScope$RegistryType;

.field public static final enum SingleItem:Lorg/kodein/di/android/ActivityRetainedScope$RegistryType;

.field public static final enum Standard:Lorg/kodein/di/android/ActivityRetainedScope$RegistryType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/kodein/di/android/ActivityRetainedScope$RegistryType;

    new-instance v1, Lorg/kodein/di/android/ActivityRetainedScope$RegistryType$Standard;

    const-string v2, "Standard"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/kodein/di/android/ActivityRetainedScope$RegistryType$Standard;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/kodein/di/android/ActivityRetainedScope$RegistryType;->Standard:Lorg/kodein/di/android/ActivityRetainedScope$RegistryType;

    aput-object v1, v0, v3

    new-instance v1, Lorg/kodein/di/android/ActivityRetainedScope$RegistryType$SingleItem;

    const-string v2, "SingleItem"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/kodein/di/android/ActivityRetainedScope$RegistryType$SingleItem;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/kodein/di/android/ActivityRetainedScope$RegistryType;->SingleItem:Lorg/kodein/di/android/ActivityRetainedScope$RegistryType;

    aput-object v1, v0, v3

    sput-object v0, Lorg/kodein/di/android/ActivityRetainedScope$RegistryType;->$VALUES:[Lorg/kodein/di/android/ActivityRetainedScope$RegistryType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lorg/kodein/di/android/ActivityRetainedScope$RegistryType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/kodein/di/android/ActivityRetainedScope$RegistryType;
    .locals 1

    const-class v0, Lorg/kodein/di/android/ActivityRetainedScope$RegistryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/kodein/di/android/ActivityRetainedScope$RegistryType;

    return-object p0
.end method

.method public static values()[Lorg/kodein/di/android/ActivityRetainedScope$RegistryType;
    .locals 1

    sget-object v0, Lorg/kodein/di/android/ActivityRetainedScope$RegistryType;->$VALUES:[Lorg/kodein/di/android/ActivityRetainedScope$RegistryType;

    invoke-virtual {v0}, [Lorg/kodein/di/android/ActivityRetainedScope$RegistryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/kodein/di/android/ActivityRetainedScope$RegistryType;

    return-object v0
.end method


# virtual methods
.method public abstract new()Lorg/kodein/di/bindings/ScopeRegistry;
.end method

.class public interface abstract Lorg/kodein/di/Copy;
.super Ljava/lang/Object;
.source "Copy.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/kodein/di/Copy$All;,
        Lorg/kodein/di/Copy$None;,
        Lorg/kodein/di/Copy$NonCached;,
        Lorg/kodein/di/Copy$BaseDSL;,
        Lorg/kodein/di/Copy$DSL;,
        Lorg/kodein/di/Copy$AllButDSL;,
        Lorg/kodein/di/Copy$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008f\u0018\u0000 \n2\u00020\u0001:\u0007\u0007\u0008\t\n\u000b\u000c\rJ\"\u0010\u0002\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&\u00a8\u0006\u000e"
    }
    d2 = {
        "Lorg/kodein/di/Copy;",
        "",
        "keySet",
        "",
        "Lorg/kodein/di/Kodein$Key;",
        "tree",
        "Lorg/kodein/di/KodeinTree;",
        "All",
        "AllButDSL",
        "BaseDSL",
        "Companion",
        "DSL",
        "NonCached",
        "None",
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
.field public static final Companion:Lorg/kodein/di/Copy$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/kodein/di/Copy$Companion;->$$INSTANCE:Lorg/kodein/di/Copy$Companion;

    sput-object v0, Lorg/kodein/di/Copy;->Companion:Lorg/kodein/di/Copy$Companion;

    return-void
.end method


# virtual methods
.method public abstract keySet(Lorg/kodein/di/KodeinTree;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/KodeinTree;",
            ")",
            "Ljava/util/Set<",
            "Lorg/kodein/di/Kodein$Key<",
            "***>;>;"
        }
    .end annotation
.end method

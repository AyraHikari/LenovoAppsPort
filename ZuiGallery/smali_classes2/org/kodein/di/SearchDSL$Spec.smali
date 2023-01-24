.class public interface abstract Lorg/kodein/di/SearchDSL$Spec;
.super Ljava/lang/Object;
.source "Search.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/kodein/di/SearchDSL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Spec"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/kodein/di/SearchDSL$Spec$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u0000 \u00062\u00020\u0001:\u0001\u0006J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&\u00a8\u0006\u0007"
    }
    d2 = {
        "Lorg/kodein/di/SearchDSL$Spec;",
        "",
        "apply",
        "",
        "specs",
        "Lorg/kodein/di/SearchSpecs;",
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
.field public static final Companion:Lorg/kodein/di/SearchDSL$Spec$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/kodein/di/SearchDSL$Spec$Companion;->$$INSTANCE:Lorg/kodein/di/SearchDSL$Spec$Companion;

    sput-object v0, Lorg/kodein/di/SearchDSL$Spec;->Companion:Lorg/kodein/di/SearchDSL$Spec$Companion;

    return-void
.end method


# virtual methods
.method public abstract apply(Lorg/kodein/di/SearchSpecs;)V
.end method

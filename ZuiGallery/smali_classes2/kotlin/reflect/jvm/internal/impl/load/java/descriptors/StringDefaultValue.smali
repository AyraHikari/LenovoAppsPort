.class public final Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/StringDefaultValue;
.super Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/AnnotationDefaultValue;
.source "util.kt"


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/AnnotationDefaultValue;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/StringDefaultValue;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/StringDefaultValue;->value:Ljava/lang/String;

    return-object v0
.end method

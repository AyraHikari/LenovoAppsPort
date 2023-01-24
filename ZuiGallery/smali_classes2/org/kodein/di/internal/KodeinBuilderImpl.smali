.class public Lorg/kodein/di/internal/KodeinBuilderImpl;
.super Ljava/lang/Object;
.source "KodeinBuilderImpl.kt"

# interfaces
.implements Lorg/kodein/di/Kodein$Builder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/kodein/di/internal/KodeinBuilderImpl$TypeBinder;,
        Lorg/kodein/di/internal/KodeinBuilderImpl$DirectBinder;,
        Lorg/kodein/di/internal/KodeinBuilderImpl$ConstantBinder;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKodeinBuilderImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KodeinBuilderImpl.kt\norg/kodein/di/internal/KodeinBuilderImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,103:1\n1591#2,2:104\n10930#3,2:106\n*E\n*S KotlinDebug\n*F\n+ 1 KodeinBuilderImpl.kt\norg/kodein/di/internal/KodeinBuilderImpl\n*L\n55#1,2:104\n58#1,2:106\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u001c\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0010\u0018\u00002\u00020\u0001:\u0003789B/\u0008\u0000\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ%\u0010\u0017\u001a\u00060\u0018R\u00020\u00002\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016\u00a2\u0006\u0002\u0010\u001cJE\u0010\u0017\u001a\u000c\u0012\u0004\u0012\u0002H\u001e0\u001dR\u00020\u0000\"\u0008\u0008\u0000\u0010\u001e*\u00020\u000e2\u000e\u0010\u001f\u001a\n\u0012\u0006\u0008\u0001\u0012\u0002H\u001e0\r2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016\u00a2\u0006\u0002\u0010 J\u0018\u0010!\u001a\u00020\"2\u000e\u0010#\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030$H\u0016J#\u0010%\u001a\u00060&R\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u000e2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016\u00a2\u0006\u0002\u0010\'J\u0018\u0010(\u001a\u00020\"2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\u001bH\u0016J)\u0010,\u001a\u00020\"2\u0012\u0010-\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020*0.\"\u00020*2\u0006\u0010+\u001a\u00020\u001bH\u0016\u00a2\u0006\u0002\u0010/J\u001e\u0010,\u001a\u00020\"2\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020*002\u0006\u0010+\u001a\u00020\u001bH\u0016J\u0018\u00101\u001a\u00020\"2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\u001bH\u0016J!\u00102\u001a\u00020\"2\u0017\u00103\u001a\u0013\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u00020\"04\u00a2\u0006\u0002\u00086H\u0016R\u0014\u0010\u0007\u001a\u00020\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u001c\u0010\u000c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\rX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0013\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u00148VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006:"
    }
    d2 = {
        "Lorg/kodein/di/internal/KodeinBuilderImpl;",
        "Lorg/kodein/di/Kodein$Builder;",
        "moduleName",
        "",
        "prefix",
        "importedModules",
        "",
        "containerBuilder",
        "Lorg/kodein/di/internal/KodeinContainerBuilderImpl;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lorg/kodein/di/internal/KodeinContainerBuilderImpl;)V",
        "getContainerBuilder",
        "()Lorg/kodein/di/internal/KodeinContainerBuilderImpl;",
        "contextType",
        "Lorg/kodein/di/TypeToken;",
        "",
        "getContextType",
        "()Lorg/kodein/di/TypeToken;",
        "getImportedModules$kodein_di_core",
        "()Ljava/util/Set;",
        "scope",
        "Lorg/kodein/di/bindings/Scope;",
        "getScope",
        "()Lorg/kodein/di/bindings/Scope;",
        "Bind",
        "Lorg/kodein/di/internal/KodeinBuilderImpl$DirectBinder;",
        "tag",
        "overrides",
        "",
        "(Ljava/lang/Object;Ljava/lang/Boolean;)Lorg/kodein/di/internal/KodeinBuilderImpl$DirectBinder;",
        "Lorg/kodein/di/internal/KodeinBuilderImpl$TypeBinder;",
        "T",
        "type",
        "(Lorg/kodein/di/TypeToken;Ljava/lang/Object;Ljava/lang/Boolean;)Lorg/kodein/di/internal/KodeinBuilderImpl$TypeBinder;",
        "RegisterContextTranslator",
        "",
        "translator",
        "Lorg/kodein/di/bindings/ContextTranslator;",
        "constant",
        "Lorg/kodein/di/internal/KodeinBuilderImpl$ConstantBinder;",
        "(Ljava/lang/Object;Ljava/lang/Boolean;)Lorg/kodein/di/internal/KodeinBuilderImpl$ConstantBinder;",
        "import",
        "module",
        "Lorg/kodein/di/Kodein$Module;",
        "allowOverride",
        "importAll",
        "modules",
        "",
        "([Lorg/kodein/di/Kodein$Module;Z)V",
        "",
        "importOnce",
        "onReady",
        "cb",
        "Lkotlin/Function1;",
        "Lorg/kodein/di/DKodein;",
        "Lkotlin/ExtensionFunctionType;",
        "ConstantBinder",
        "DirectBinder",
        "TypeBinder",
        "kodein-di-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final containerBuilder:Lorg/kodein/di/internal/KodeinContainerBuilderImpl;

.field private final contextType:Lorg/kodein/di/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/kodein/di/TypeToken<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final importedModules:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final moduleName:Ljava/lang/String;

.field private final prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lorg/kodein/di/internal/KodeinContainerBuilderImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/kodein/di/internal/KodeinContainerBuilderImpl;",
            ")V"
        }
    .end annotation

    const-string v0, "prefix"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "importedModules"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containerBuilder"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/kodein/di/internal/KodeinBuilderImpl;->moduleName:Ljava/lang/String;

    iput-object p2, p0, Lorg/kodein/di/internal/KodeinBuilderImpl;->prefix:Ljava/lang/String;

    iput-object p3, p0, Lorg/kodein/di/internal/KodeinBuilderImpl;->importedModules:Ljava/util/Set;

    iput-object p4, p0, Lorg/kodein/di/internal/KodeinBuilderImpl;->containerBuilder:Lorg/kodein/di/internal/KodeinContainerBuilderImpl;

    .line 13
    invoke-static {}, Lorg/kodein/di/TypeTokenKt;->getAnyToken()Lorg/kodein/di/TypeToken;

    move-result-object p1

    iput-object p1, p0, Lorg/kodein/di/internal/KodeinBuilderImpl;->contextType:Lorg/kodein/di/TypeToken;

    return-void
.end method

.method public static final synthetic access$getModuleName$p(Lorg/kodein/di/internal/KodeinBuilderImpl;)Ljava/lang/String;
    .locals 0

    .line 6
    iget-object p0, p0, Lorg/kodein/di/internal/KodeinBuilderImpl;->moduleName:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic Bind(Ljava/lang/Object;Ljava/lang/Boolean;)Lorg/kodein/di/Kodein$Builder$DirectBinder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lorg/kodein/di/internal/KodeinBuilderImpl;->Bind(Ljava/lang/Object;Ljava/lang/Boolean;)Lorg/kodein/di/internal/KodeinBuilderImpl$DirectBinder;

    move-result-object p1

    check-cast p1, Lorg/kodein/di/Kodein$Builder$DirectBinder;

    return-object p1
.end method

.method public bridge synthetic Bind(Lorg/kodein/di/TypeToken;Ljava/lang/Object;Ljava/lang/Boolean;)Lorg/kodein/di/Kodein$Builder$TypeBinder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lorg/kodein/di/internal/KodeinBuilderImpl;->Bind(Lorg/kodein/di/TypeToken;Ljava/lang/Object;Ljava/lang/Boolean;)Lorg/kodein/di/internal/KodeinBuilderImpl$TypeBinder;

    move-result-object p1

    check-cast p1, Lorg/kodein/di/Kodein$Builder$TypeBinder;

    return-object p1
.end method

.method public Bind(Ljava/lang/Object;Ljava/lang/Boolean;)Lorg/kodein/di/internal/KodeinBuilderImpl$DirectBinder;
    .locals 1

    .line 41
    new-instance v0, Lorg/kodein/di/internal/KodeinBuilderImpl$DirectBinder;

    invoke-direct {v0, p0, p1, p2}, Lorg/kodein/di/internal/KodeinBuilderImpl$DirectBinder;-><init>(Lorg/kodein/di/internal/KodeinBuilderImpl;Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public Bind(Lorg/kodein/di/TypeToken;Ljava/lang/Object;Ljava/lang/Boolean;)Lorg/kodein/di/internal/KodeinBuilderImpl$TypeBinder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/TypeToken<",
            "+TT;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ")",
            "Lorg/kodein/di/internal/KodeinBuilderImpl$TypeBinder<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v0, Lorg/kodein/di/internal/KodeinBuilderImpl$TypeBinder;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/kodein/di/internal/KodeinBuilderImpl$TypeBinder;-><init>(Lorg/kodein/di/internal/KodeinBuilderImpl;Lorg/kodein/di/TypeToken;Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public RegisterContextTranslator(Lorg/kodein/di/bindings/ContextTranslator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/bindings/ContextTranslator<",
            "**>;)V"
        }
    .end annotation

    const-string v0, "translator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lorg/kodein/di/internal/KodeinBuilderImpl;->getContainerBuilder()Lorg/kodein/di/internal/KodeinContainerBuilderImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/kodein/di/internal/KodeinContainerBuilderImpl;->registerContextTranslator(Lorg/kodein/di/bindings/ContextTranslator;)V

    return-void
.end method

.method public bridge synthetic constant(Ljava/lang/Object;Ljava/lang/Boolean;)Lorg/kodein/di/Kodein$Builder$ConstantBinder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lorg/kodein/di/internal/KodeinBuilderImpl;->constant(Ljava/lang/Object;Ljava/lang/Boolean;)Lorg/kodein/di/internal/KodeinBuilderImpl$ConstantBinder;

    move-result-object p1

    check-cast p1, Lorg/kodein/di/Kodein$Builder$ConstantBinder;

    return-object p1
.end method

.method public constant(Ljava/lang/Object;Ljava/lang/Boolean;)Lorg/kodein/di/internal/KodeinBuilderImpl$ConstantBinder;
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance v0, Lorg/kodein/di/internal/KodeinBuilderImpl$ConstantBinder;

    invoke-direct {v0, p0, p1, p2}, Lorg/kodein/di/internal/KodeinBuilderImpl$ConstantBinder;-><init>(Lorg/kodein/di/internal/KodeinBuilderImpl;Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public bridge synthetic getContainerBuilder()Lorg/kodein/di/KodeinContainer$Builder;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lorg/kodein/di/internal/KodeinBuilderImpl;->getContainerBuilder()Lorg/kodein/di/internal/KodeinContainerBuilderImpl;

    move-result-object v0

    check-cast v0, Lorg/kodein/di/KodeinContainer$Builder;

    return-object v0
.end method

.method public getContainerBuilder()Lorg/kodein/di/internal/KodeinContainerBuilderImpl;
    .locals 1

    .line 10
    iget-object v0, p0, Lorg/kodein/di/internal/KodeinBuilderImpl;->containerBuilder:Lorg/kodein/di/internal/KodeinContainerBuilderImpl;

    return-object v0
.end method

.method public getContextType()Lorg/kodein/di/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kodein/di/TypeToken<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lorg/kodein/di/internal/KodeinBuilderImpl;->contextType:Lorg/kodein/di/TypeToken;

    return-object v0
.end method

.method public final getImportedModules$kodein_di_core()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lorg/kodein/di/internal/KodeinBuilderImpl;->importedModules:Ljava/util/Set;

    return-object v0
.end method

.method public getScope()Lorg/kodein/di/bindings/Scope;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kodein/di/bindings/Scope<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 15
    new-instance v0, Lorg/kodein/di/bindings/NoScope;

    invoke-direct {v0}, Lorg/kodein/di/bindings/NoScope;-><init>()V

    check-cast v0, Lorg/kodein/di/bindings/Scope;

    return-object v0
.end method

.method public import(Lorg/kodein/di/Kodein$Module;Z)V
    .locals 6

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/kodein/di/internal/KodeinBuilderImpl;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/kodein/di/Kodein$Module;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/kodein/di/internal/KodeinBuilderImpl;->importedModules:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Module \""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" has already been imported!"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 50
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/kodein/di/internal/KodeinBuilderImpl;->importedModules:Ljava/util/Set;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v1, Lorg/kodein/di/internal/KodeinBuilderImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/kodein/di/internal/KodeinBuilderImpl;->prefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/kodein/di/Kodein$Module;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/kodein/di/internal/KodeinBuilderImpl;->importedModules:Ljava/util/Set;

    invoke-virtual {p0}, Lorg/kodein/di/internal/KodeinBuilderImpl;->getContainerBuilder()Lorg/kodein/di/internal/KodeinContainerBuilderImpl;

    move-result-object v4

    invoke-virtual {p1}, Lorg/kodein/di/Kodein$Module;->getAllowSilentOverride()Z

    move-result v5

    invoke-virtual {v4, p2, v5}, Lorg/kodein/di/internal/KodeinContainerBuilderImpl;->subBuilder(ZZ)Lorg/kodein/di/internal/KodeinContainerBuilderImpl;

    move-result-object p2

    invoke-direct {v1, v0, v2, v3, p2}, Lorg/kodein/di/internal/KodeinBuilderImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lorg/kodein/di/internal/KodeinContainerBuilderImpl;)V

    invoke-virtual {p1}, Lorg/kodein/di/Kodein$Module;->getInit()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public importAll(Ljava/lang/Iterable;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lorg/kodein/di/Kodein$Module;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "modules"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/kodein/di/Kodein$Module;

    .line 55
    invoke-virtual {p0, v0, p2}, Lorg/kodein/di/internal/KodeinBuilderImpl;->import(Lorg/kodein/di/Kodein$Module;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public importAll([Lorg/kodein/di/Kodein$Module;Z)V
    .locals 3

    const-string v0, "modules"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 58
    invoke-virtual {p0, v2, p2}, Lorg/kodein/di/internal/KodeinBuilderImpl;->import(Lorg/kodein/di/Kodein$Module;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public importOnce(Lorg/kodein/di/Kodein$Module;Z)V
    .locals 2

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Lorg/kodein/di/Kodein$Module;->getName()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 63
    iget-object v0, p0, Lorg/kodein/di/internal/KodeinBuilderImpl;->importedModules:Ljava/util/Set;

    invoke-virtual {p1}, Lorg/kodein/di/Kodein$Module;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    invoke-virtual {p0, p1, p2}, Lorg/kodein/di/internal/KodeinBuilderImpl;->import(Lorg/kodein/di/Kodein$Module;Z)V

    :cond_1
    return-void

    .line 62
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "importOnce must be given a named module."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public onReady(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lorg/kodein/di/DKodein;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lorg/kodein/di/internal/KodeinBuilderImpl;->getContainerBuilder()Lorg/kodein/di/internal/KodeinContainerBuilderImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/kodein/di/internal/KodeinContainerBuilderImpl;->onReady(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

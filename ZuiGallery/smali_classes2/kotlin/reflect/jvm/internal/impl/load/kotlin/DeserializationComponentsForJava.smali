.class public final Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializationComponentsForJava;
.super Ljava/lang/Object;
.source "DeserializationComponentsForJava.kt"


# instance fields
.field private final components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;Lkotlin/reflect/jvm/internal/impl/load/kotlin/JavaClassDataFinder;Lkotlin/reflect/jvm/internal/impl/load/kotlin/BinaryClassAnnotationAndConstantLoaderImpl;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaPackageFragmentProvider;Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter;Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupTracker;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ContractDeserializer;Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;)V
    .locals 22

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    const-string v3, "storageManager"

    move-object/from16 v5, p1

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "moduleDescriptor"

    move-object/from16 v6, p2

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "configuration"

    move-object/from16 v7, p3

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "classDataFinder"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "annotationAndConstantLoader"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "packageFragmentProvider"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "notFoundClasses"

    move-object/from16 v15, p7

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "errorReporter"

    move-object/from16 v12, p8

    invoke-static {v12, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "lookupTracker"

    move-object/from16 v13, p9

    invoke-static {v13, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "contractDeserializer"

    move-object/from16 v14, p10

    invoke-static {v14, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "kotlinTypeChecker"

    move-object/from16 v11, p11

    invoke-static {v11, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-interface/range {p2 .. p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object v3

    instance-of v4, v3, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;

    if-nez v4, :cond_0

    const/4 v3, 0x0

    :cond_0
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;

    .line 51
    new-instance v10, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    .line 52
    move-object v8, v0

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDataFinder;

    move-object v9, v1

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotationAndConstantLoader;

    move-object v0, v2

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentProvider;

    .line 53
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/LocalClassifierTypeSettings$Default;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/LocalClassifierTypeSettings$Default;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/LocalClassifierTypeSettings;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JavaFlexibleTypeDeserializer;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/JavaFlexibleTypeDeserializer;

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/FlexibleTypeDeserializer;

    .line 54
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    move-object/from16 v16, v4

    check-cast v16, Ljava/lang/Iterable;

    if-eqz v3, :cond_1

    .line 55
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;->getSettings()Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSettings;

    move-result-object v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/AdditionalClassPartsProvider$None;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/AdditionalClassPartsProvider$None;

    :goto_0
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/AdditionalClassPartsProvider;

    move-object/from16 v18, v4

    if-eqz v3, :cond_2

    .line 56
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;->getSettings()Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSettings;

    move-result-object v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/PlatformDependentDeclarationFilter$NoPlatformDependent;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/PlatformDependentDeclarationFilter$NoPlatformDependent;

    :goto_1
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/PlatformDependentDeclarationFilter;

    move-object/from16 v19, v3

    .line 57
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmProtoBufUtil;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmProtoBufUtil;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmProtoBufUtil;->getEXTENSION_REGISTRY()Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;

    move-result-object v20

    move-object v4, v10

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object v3, v10

    move-object v10, v0

    move-object v11, v1

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object v14, v2

    move-object/from16 v15, v16

    move-object/from16 v16, p7

    move-object/from16 v17, p10

    move-object/from16 v21, p11

    .line 51
    invoke-direct/range {v4 .. v21}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDataFinder;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotationAndConstantLoader;Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentProvider;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/LocalClassifierTypeSettings;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter;Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupTracker;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/FlexibleTypeDeserializer;Ljava/lang/Iterable;Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ContractDeserializer;Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/AdditionalClassPartsProvider;Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/PlatformDependentDeclarationFilter;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializationComponentsForJava;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    return-void
.end method


# virtual methods
.method public final getComponents()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;
    .locals 1

    .line 46
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializationComponentsForJava;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    return-object v0
.end method

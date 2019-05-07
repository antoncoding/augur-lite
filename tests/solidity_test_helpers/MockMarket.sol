pragma solidity 0.4.26;

import 'reporting/IMarket.sol';
import 'reporting/IUniverse.sol';
import 'reporting/IMailbox.sol';
import 'libraries/ITyped.sol';
import 'TEST/MockVariableSupplyToken.sol';


contract MockMarket is IMarket {
  IUniverse private universe;
  bytes32 private derivePayoutDistributionHashValue;
  uint256 private numberOfOutcomes;
  uint256 private numTicks;
  MockVariableSupplyToken private denominationToken;
  IShareToken private shareToken;
  address private oracle;
  uint256 private marketCreatorSettlementFeeDivisor;
  uint256 private resolutionTime;
  uint256 private endTime;
  bool private isContForShareToken;
  bool private isInValidValue;
  address private owner;
  bool private transferOwner;
  IUniverse private initializeUniverseValue;
  uint256 private initializeEndTime;
  uint256 private initializeNumOutcomesValue;
  uint256 private initializeNumTicksValue;
  uint256 private initializeFeePerEthInAttoethValue;
  MockVariableSupplyToken private initializeTokenValue;
  address private initializeCreatorValue;
  IMailbox private setMarketCreatorMailbox;
  /*
  * setters to feed the getters and impl of IMarket
  */
  function setUniverse(IUniverse _universe) public {
    universe = _universe;
  }

  function setDerivePayoutDistributionHash(bytes32 _derivePayoutDistributionHashValue) public {
    derivePayoutDistributionHashValue = _derivePayoutDistributionHashValue;
  }

  function setNumberOfOutcomes(uint256 _numberOfOutcomes) public {
    numberOfOutcomes = _numberOfOutcomes;
  }

  function setNumTicks(uint256 _numTicks) public {
    numTicks = _numTicks;
  }

  function setDenominationToken(MockVariableSupplyToken _denominationToken) public {
    denominationToken = _denominationToken;
  }

  function setShareToken(IShareToken _shareToken)  public {
    shareToken = _shareToken;
  }

  function setDesignatedReporter(address _designatedReporter) public {
    designatedReporter = _designatedReporter;
  }

  function setMarketCreatorSettlementFeeDivisor(uint256 _marketCreatorSettlementFeeDivisor) public {
    marketCreatorSettlementFeeDivisor = _marketCreatorSettlementFeeDivisor;
  }

  function setResolutionTime(uint256 _resolutionTime) public {
    resolutionTime = _resolutionTime;
  }

  function setEndTime(uint256 _endTime) public {
    endTime = _endTime;
  }

  function setIsContainerForShareToken(bool _isContForShareToken) public {
    isContForShareToken = _isContForShareToken;
  }

  function setIsInvalid(bool _isInValidValue) public {
    isInValidValue = _isInValidValue;
  }

  function setOwner(address _owner) public {
    owner = _owner;
  }

  function setTransferOwnership(bool _transferOwner) public {
    transferOwner = _transferOwner;
  }

  function getInitializeUniverseValue() public view returns (IUniverse) {
    return initializeUniverseValue;
  }

  function getInitializeEndTime() public returns(uint256) {
    return initializeEndTime;
  }

  function getInitializeNumOutcomesValue() public returns(uint256) {
    return initializeNumOutcomesValue;
  }

  function getInitializeNumTicksValue() public returns(uint256) {
    return initializeNumTicksValue;
  }

  function getInitializeFeePerEthInAttoethValue() public returns(uint256) {
    return initializeFeePerEthInAttoethValue;
  }

  function getInitializeTokenValue() public view returns(MockVariableSupplyToken) {
    return initializeTokenValue;
  }

  function getInitializeCreatorValue() public returns(address) {
    return initializeCreatorValue;
  }

  function callTrustedMarketTransfer(IReputationToken _reputationToken, address _source, address _destination, uint256 _attotokens) public returns (bool) {
    return _reputationToken.trustedMarketTransfer(_source, _destination, _attotokens);
  }

  function setMarketCreatorMailboxValue(IMailbox _setMarketCreatorMailbox) public {
    setMarketCreatorMailbox = _setMarketCreatorMailbox;
  }

  /*
  * IMarket methods
  */
  function getOwner() public view returns (address) {
    return owner;
  }

  function transferOwnership(address newOwner) public returns (bool) {
    return transferOwner;
  }

  function getTypeName() public view returns (bytes32) {
    return "Market";
  }

  function initialize(IUniverse _universe, uint256 _endTime, uint256 _feePerEthInAttoeth, MockVariableSupplyToken _token, address _oracle, address _creator, uint256 _numOutcomes, uint256 _numTicks) public payable returns (bool _success) {
    initializeUniverseValue = _universe;
    initializeEndTime = _endTime;
    initializeNumOutcomesValue = _numOutcomes;
    initializeNumTicksValue = _numTicks;
    initializeFeePerEthInAttoethValue = _feePerEthInAttoeth;
    initializeTokenValue = _token;
    initializeCreatorValue = _creator;
    oracle = _oracle;
    return true;
  }

  function derivePayoutDistributionHash(uint256[] _payoutNumerators, bool _invalid) public view returns (bytes32) {
    return derivePayoutDistributionHashValue;
  }

  function getUniverse() public view returns (IUniverse) {
    return universe;
  }

  function getNumberOfOutcomes() public view returns (uint256) {
    return numberOfOutcomes;
  }

  function getNumTicks() public view returns (uint256) {
    return numTicks;
  }

  function getDenominationToken() public view returns (MockVariableSupplyToken) {
    return denominationToken;
  }

  function getShareToken(uint256 _outcome)  public view returns (IShareToken) {
    return shareToken;
  }

  function getOracle() public view returns (address) {
    return oracle;
  }

  function getMarketCreatorSettlementFeeDivisor() public view returns (uint256) {
    return marketCreatorSettlementFeeDivisor;
  }

  function getResolutionTime() public view returns (uint256) {
    return resolutionTime;
  }

  function getEndTime() public view returns (uint256) {
    return endTime;
  }

  function isContainerForShareToken(IShareToken _shadyTarget) public view returns (bool) {
    return isContForShareToken;
  }

  function isInvalid() public view returns (bool) {
    return isInValidValue;
  }

  function getMarketCreatorMailbox() public view returns (IMailbox) {
    return setMarketCreatorMailbox;
  }

  function getWinningPayoutDistributionHash() public view returns (bytes32) {
    return bytes32(0);
  }

  function getWinningPayoutNumerator(uint256 _outcome) public view returns (uint256) {
    return 0;
  }

  function isResolved() public view returns (bool) {
    return true;
  }

  function assertBalances() public view returns (bool) {
    return true;
  }

  function onTransferOwnership(address, address) internal returns (bool) {
    return true;
  }

  function deriveMarketCreatorFeeAmount(uint256 _amount) public view returns (uint256) {
    return 0;
  }
}
